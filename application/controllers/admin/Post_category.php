<?php 

/**
* 
*/
class Post_category extends Admin_Controller{
    private $author_data = array();
    private $controller = '';

	function __construct(){
		parent::__construct();
		$this->load->model('post_category_model');
		$this->load->helper('common');
        $this->load->helper('file');

        $this->controller = 'post_category';
        $this->data['controller'] = $this->controller;
		$this->author_data = handle_author_common_data();
	}

    public function index(){
        $keywords = '';
        if($this->input->get('search')){
            $keywords = $this->input->get('search');
        }
        $total_rows  = $this->post_category_model->count_search();
        if($keywords != ''){
            $total_rows  = $this->post_category_model->count_search($keywords);
        }
        $this->load->library('pagination');
        $config = array();
        $base_url = base_url('admin/'. $this->controller .'/index');
        $per_page = 1000;
        $uri_segment = 4;
        foreach ($this->pagination_config($base_url, $total_rows, $per_page, $uri_segment) as $key => $value) {
            $config[$key] = $value;
        }
        $this->data['page'] = ($this->uri->segment(4)) ? $this->uri->segment(4) : 0;
        $this->pagination->initialize($config);
        $this->data['page_links'] = $this->pagination->create_links();

        $result = $this->post_category_model->get_all_with_pagination_and_sort_search('asc', $per_page, $this->data['page']);
        if($keywords != ''){
            $result = $this->post_category_model->get_all_with_pagination_and_sort_search('asc', $per_page, $this->data['page'], $keywords);
        }
        foreach ($result as $key => $value) {
            $parent_title = $this->build_parent_title($value['parent_id']);
            $result[$key]['parent_title'] = $parent_title;
        }
        $this->data['result'] = $result;
        $this->data['check'] = $this;
        $this->render('admin/'. $this->controller .'/list_post_category_view');
    }

	public function create(){
		$this->load->helper('form');
        $this->load->library('form_validation');

        $post_category = $this->post_category_model->get_by_parent_id(null,'asc');
        $this->data['post_category'] = $post_category;

        $this->form_validation->set_rules('title', 'Tiêu đề', 'required');

        if ($this->form_validation->run() == FALSE) {
        	$this->render('admin/'. $this->controller .'/create_post_category_view');
        } else {
        	if($this->input->post()){
                if($this->input->post('parent_id_shared') == 0){
                    $this->session->set_flashdata('message_error', MESSAGE_CREATE_ERROR);
                    redirect('admin/'. $this->data['controller'], 'refresh');
                }
        		$check_upload = true;
                if ($_FILES['image_shared']['size'] > 1228800) {
                    $check_upload = false;
                }
                if($check_upload == true){
                	$slug = $this->input->post('slug_shared');
                    $unique_slug = $this->post_category_model->build_unique_slug($slug);
                    $image = $this->upload_image('image_shared', $_FILES['image_shared']['name'], 'assets/upload/'. $this->controller .'', 'assets/upload/'. $this->controller .'/thumb');

                    $shared_request = array(
                        'slug' => $unique_slug,
                        'title' => $this->input->post('title'),
                        'content' => $this->input->post('content'),
                        'metakeywords' => $this->input->post('metakeywords'),
                        'metadescription' => $this->input->post('metadescription'),
                        'parent_id' => $this->input->post('parent_id_shared'),
                        'type' => $this->input->post('type_shared'),
                        'created_at' => $this->author_data['created_at'],
                        'created_by' => $this->author_data['created_by'],
                        'updated_at' => $this->author_data['updated_at'],
                        'updated_by' => $this->author_data['updated_by']
                    );
                    if($image){
                        $shared_request['image'] = $image;
                    }
                    $insert = $this->post_category_model->common_insert($shared_request);
                    if($insert){
                        $this->session->set_flashdata('message_success', MESSAGE_CREATE_SUCCESS);
                        redirect('admin/'. $this->controller .'', 'refresh');
                    }else {
                        $this->load->libraries('session');
                        $this->session->set_flashdata('message_error', MESSAGE_CREATE_ERROR);
                        $this->render('admin/'. $this->controller .'/create_post_category_view');
                    }
                }else{
                    $this->session->set_flashdata('message_error', sprintf(MESSAGE_PHOTOS_ERROR, 1200));
                    redirect('admin/'. $this->controller .'');
                }
        	}
        }
        
	}

    public function detail($id){
        $this->load->helper('form');
        $this->load->library('form_validation');

        $detail = $this->post_category_model->get_by_id($id);

        $parent_title = $this->build_parent_title($detail['parent_id']);
        $detail['parent_title'] = $parent_title;

        $this->data['detail'] = $detail;

        $this->render('admin/'. $this->controller .'/detail_post_category_view');
    }

    public function edit($id){
        $this->load->helper('form');
        $this->load->library('form_validation');

        $detail = $this->post_category_model->get_by_id($id, array('title', 'content'));
        $category = $this->post_category_model->get_by_parent_id(null,'asc');
        // print_r($detail);die;

        $this->data['category'] = $category;
        
        $this->data['detail'] = $detail;
        $this->data['detail']['check_parent_id'] = ($this->data['detail']['parent_id'] == 0)? 'disabled' : '';

        $this->form_validation->set_rules('title', 'Tiêu đề', 'required');

        if ($this->form_validation->run() == FALSE) {
            $this->render('admin/'. $this->controller .'/edit_post_category_view');
        } else {
            if($this->input->post()){
                $check_upload = true;
                if ($_FILES['image_shared']['size'] > 1228800) {
                    $check_upload = false;
                }
                if ($check_upload == true) {
                    $slug = $this->input->post('slug_shared');
                    $unique_slug = $this->post_category_model->build_unique_slug($slug, $id);
                    $image = $this->upload_image('image_shared', $_FILES['image_shared']['name'], 'assets/upload/'. $this->controller .'', 'assets/upload/'. $this->controller .'/thumb');
                    $shared_request = array(
                        'title' => $this->input->post('title'),
                        'content' => $this->input->post('content'),
                        'metakeywords' => $this->input->post('metakeywords'),
                        'metadescription' => $this->input->post('metadescription'),
                        'type' => $this->input->post('type_shared'),
                        'created_at' => $this->author_data['created_at'],
                        'created_by' => $this->author_data['created_by'],
                        'updated_at' => $this->author_data['updated_at'],
                        'updated_by' => $this->author_data['updated_by']
                    );
                    if($this->data['detail']['parent_id'] != 0){
                        $shared_request['slug'] = $unique_slug;
                        $shared_request['parent_id'] = $this->input->post('parent_id_shared');
                    }
                    if($image){
                        $shared_request['image'] = $image;
                    }
                    $update = $this->post_category_model->common_update($id, $shared_request);
                    if($update){
                        $this->session->set_flashdata('message_success', MESSAGE_EDIT_SUCCESS);
                        if($image != '' && $image != $detail['image'] && file_exists('assets/public/upload/'. $this->controller .'/'.$detail['image'])){
                            unlink('assets/public/upload/'. $this->controller .'/'.$detail['image']);
                        }
                        redirect('admin/'. $this->controller .'', 'refresh');
                    }else {
                        $this->load->libraries('session');
                        $this->session->set_flashdata('message_error', MESSAGE_EDIT_ERROR);
                        $this->render('admin/'. $this->controller .'/edit/'.$id);
                    }
                }else{
                    $this->session->set_flashdata('message_error', sprintf(MESSAGE_PHOTOS_ERROR, 1200));
                    redirect('admin/'. $this->controller .'');
                }
            }
        }
    }

    function remove(){
        $id = $this->input->post('id');
        $this->load->model('post_model');
        if($id &&  is_numeric($id) && ($id > 0)){
            $post_category = $this->post_category_model->get_by_id($id);
            if($post_category['parent_id'] == 0){
                return $this->return_api(HTTP_NOT_FOUND,MESSAGE_ERROR_REMOVE_CATEGORY);
            }
            if($this->post_category_model->find_rows(array('id' => $id,'is_deleted' => 0)) == 0){
                return $this->return_api(HTTP_NOT_FOUND, MESSAGE_ISSET_ERROR);
            }
            $where = array('post_category_id' => $id,'is_deleted' => 0);
            $post = $this->post_model->find_rows($where);// lấy số bài viết thuộc về category
            $where = array('parent_id' => $id,'is_deleted' => 0);
            $parent_id = $this->post_category_model->find_rows($where);//lấy số con của category
            if($post == 0 && $parent_id == 0){
                $data = array('is_deleted' => 1);
                $update = $this->post_category_model->common_update($id, $data);
                if($update){
                    $reponse = array(
                        'csrf_hash' => $this->security->get_csrf_hash()
                    );
                    return $this->return_api(HTTP_SUCCESS,MESSAGE_REMOVE_SUCCESS,$reponse);
                }
                return $this->return_api(HTTP_NOT_FOUND,MESSAGE_REMOVE_ERROR);
            }else{
                return $this->return_api(HTTP_NOT_FOUND,sprintf(MESSAGE_FOREIGN_KEY_LINK_ERROR,$post,$parent_id));
            }
        }
        return $this->return_api(HTTP_NOT_FOUND,MESSAGE_ID_ERROR);
    }
    public function active(){
        $this->load->model('post_model');
        $id = $this->input->post('id');
        $post_category = $this->post_category_model->find($id);
        if($post_category['parent_id'] != 0){
            $parent_id = $this->post_category_model->find($post_category['parent_id']);
            if($parent_id['is_activated'] == 1){ 
                return $this->return_api(HTTP_NOT_FOUND,MESSAGE_ERROR_ACTIVE_CATEGORY);
            }
        }

        $data = array('is_activated' => 0);
        $update = $this->post_category_model->multiple_update_by_ids($id, $data);

        if ($update == 1) {
            $reponse = array(
                'csrf_hash' => $this->security->get_csrf_hash()
            );
            return $this->return_api(HTTP_SUCCESS,'',$reponse);
        }
        return $this->return_api(HTTP_BAD_REQUEST);
    }

    public function deactive(){
        $this->load->model('post_model');
        $id = $this->input->post('id');
        $list_categories = $this->post_category_model->get_by_parent_id(null, 'asc');
        $this->get_multiple_posts_with_category($list_categories, $id, $ids);
        $ids = array_unique($ids);
        $post_category = $this->post_category_model->get_by_id($id);
        if($post_category['parent_id'] == 0){
            $reponse = array(
                'csrf_hash' => $this->security->get_csrf_hash()
            );
            return $this->return_api(HTTP_SUCCESS,MESSAGE_ERROR_DEACTIVE_CATEGORY,$reponse);
        }
        if(count($ids)>1){
            return $this->return_api(HTTP_NOT_FOUND,MESSAGE_DEACTIVE_POST_ERROR);
        }else{
            if(!empty($this->post_model->get_by_post_category_id($id))){
                return $this->return_api(HTTP_NOT_FOUND,MESSAGE_DEACTIVE_POST_ERROR);
            }
        }
        $data = array('is_activated' => 1);
        $update = $this->post_category_model->common_update($id,array_merge($data,$this->author_data));
        if ($update == 1) {
            $reponse = array(
                'csrf_hash' => $this->security->get_csrf_hash()
            );
            return $this->return_api(HTTP_SUCCESS,MESSAGE_DEACTIVE_SUCCESS,$reponse);
        }
    }


    protected function build_parent_title($parent_id){
        $sub = $this->post_category_model->get_by_id($parent_id);

        if($parent_id != 0){
            $title = $sub['title'];
        }else{
            $title = 'Danh mục gốc';
        }
        return $title;
    }

    function build_new_category($categorie, $parent_id = 0, &$new_categorie){
        $cate_child = array();
        foreach ($categorie as $key => $item){
            if ($item['parent_id'] == $parent_id){
                $cate_child[] = $item;
                unset($categorie[$key]);
            }
        }
        if ($cate_child){
            foreach ($cate_child as $key => $item){
                $new_categorie[] = $item;
                $this->build_new_category($categorie, $item['id'], $new_categorie);
            }
        }
    }

    public function sort(){
        $params = array();
        parse_str($this->input->get('sort'), $params);
        $i = 1;
        foreach($params as $value){
            $this->post_category_model->update_sort($i, $value[0]);
            $i++;
        }
    }

    public function check_sub_category($id){
        $check_sub_category = $this->post_category_model->get_by_parent_id($id);
        if ($check_sub_category) {
            return true;
        }
        return false;
    }

    function get_multiple_posts_with_category($categories, $parent_id = 0, &$ids){
        foreach ($categories as $key => $item){
            $ids[] = $parent_id;
            if ($item['parent_id'] == $parent_id){
                $ids[] = $item['id'];
                $this->get_multiple_posts_with_category($categories, $item['id'], $ids);
            }
        }
    }
}