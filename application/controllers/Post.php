<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Post extends Public_Controller {
  
    public function __construct() {
        parent::__construct();
        $this->load->model('post_model');
        $this->load->model('post_category_model');
    }

    public function index() {
        $this->data['current_link'] = 'post';
    }
    public function get_multiple_posts_with_category_id($categories, $parent_id = 0, &$id_array){
        foreach ($categories as $key => $item){
            if ($item['parent_id'] == $parent_id){
                $id_array[] = $item['id'];
                unset($categories[$key]);
                $this->get_multiple_posts_with_category_id($categories, $item['id'], $id_array);
            }
        }
    }
    public function category($slug) {
        $category = $this->post_category_model->fetch_row_by_slug($slug);
        $total_rows  = $this->post_model->count_search();
        $this->load->library('pagination');
        $base_url = base_url('post/category');
        $uri_segment = 4;
        $per_page = 10;
        foreach ($this->pagination_config($base_url, $total_rows, $per_page, $uri_segment) as $key => $value) {
            $config[$key] = $value;
        }
        $this->pagination->initialize($config);
        $this->data['page_links'] = $this->pagination->create_links();
        $this->data['page'] = ($this->uri->segment($uri_segment)) ? $this->uri->segment($uri_segment) : 0;

        $this->data['category'] = $category;
        $this->get_multiple_posts_with_category_id($this->post_category_model->get_all(), $category['id'], $id_array);
        if(empty($id_array)){
            $id_array = array();
        }
        array_unshift($id_array,$category['id']);
        $this->data['result'] = $this->post_model->get_all_with_pagination('desc', $per_page, $this->data['page'], $id_array);
        $this->render('post_view');
    }

    public function detail($slug){
        $this->data['detail'] = $this->post_model->fetch_row_by_slug($slug);
        $this->render('detail_post_view');
    }
}