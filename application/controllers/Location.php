<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Location extends Public_Controller {
  
    public function __construct() {
        parent::__construct();
        $this->load->model('localtion_model');
    }

    public function index() {
        $total_rows  = $this->localtion_model->count_search();
        $this->load->library('pagination');
        $base_url = base_url('location/index');
        $uri_segment = 3;
        $per_page = 8;
        foreach ($this->pagination_config($base_url, $total_rows, $per_page, $uri_segment) as $key => $value) {
            $config[$key] = $value;
        }
        $this->pagination->initialize($config);
        $this->data['page_links'] = $this->pagination->create_links();
        $this->data['page'] = ($this->uri->segment($uri_segment)) ? $this->uri->segment($uri_segment) : 0;

        $this->data['result'] = $this->localtion_model->get_all_with_pagination_search('desc', $per_page, $this->data['page']);
        $this->render('location_view');
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
    public function detail($slug){
        $this->data['detail'] = $this->localtion_model->fetch_row_by_slug($slug);
        $this->render('detail_localtion_view');
    }
}