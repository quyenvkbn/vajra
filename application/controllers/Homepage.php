<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Homepage extends Public_Controller {

	private $_lang = '';

    public function __construct() {
        parent::__construct();
        $this->data['lang'] = $this->session->userdata('langAbbreviation');
        $this->load->model('product_model');
        $this->load->model('post_model');
        $this->load->model('post_category_model');
        $this->load->model('banner_model');
        $this->load->model('product_category_model');
    }

    public function get_multiple_products_with_category_id($categories, $parent_id = 0, &$ids){
        foreach ($categories as $key => $item){
            if ($item['parent_id'] == $parent_id){
                $ids[] = $item['id'];
                unset($categories[$key]);
                $this->get_multiple_products_with_category_id($categories, $item['id'], $ids);
            }
        }
    }
    public function get_multiple_products_with_category($categories, $parent_id = 0, &$sub){
        foreach ($categories as $key => $item){
            if (!empty($item) && $item['id'] == $parent_id){
                $sub[] = $categories[$key];
                unset($categories[$key]);
                $this->get_multiple_products_with_category($categories, $item['parent_id'], $sub);
            }
        }
    }
    public function get_all_product_in_category($tour_in_category,$number_tour=0){
        $this->get_multiple_products_with_category($this->product_category_model->get_all_lang(),$tour_in_category['parent_id'],$sub);
        if(empty($sub)){
            $tour_in_category['sub'] = $sub;
        }else{
            $tour_in_category['sub'] = array_reverse($sub);
        }
        $this->get_multiple_products_with_category_id($this->product_category_model->get_all_lang(), $tour_in_category['id'], $ids);
        if(empty($ids)){
            $ids = array();
        }
        array_unshift($ids,$tour_in_category['id']);
        $tour =$this->product_model->get_by_product_category_id_array($ids,$number_tour);
        return $tour;
    }
    public function index() {
        /**
         * GET BANNER
         */
        $this->data['banner'] = $this->banner_model->get_all_lang();
        /**
         * GET TOURS IN EACH CATEGORY AND CATEGORY DOMESTIC_PILGRIMAGE,INTERNATIONAL_PILGRIMAGE
         */
        $this->data['domestic'] = $this->product_category_model->get_by_id(FIXED_DOMESTIC_PILGRIMAGE_CATEGORY_ID);
        $this->data['tour_domestic'] = $this->get_all_product_in_category($this->data['domestic'],3);
        $this->data['international'] = $this->product_category_model->get_by_id(FIXED_INTERNATIONAL_PILGRIMAGE_CATEGORY_ID);
        $this->data['tour_international'] = $this->get_all_product_in_category($this->data['international'],3);
        /**
         * GET POSTS IN SHARED CORNER
         */
        $shared_corner = array(FIXED_SHARED_CORNER);
        $this->get_post_category_data(FIXED_SHARED_CORNER,$shared_corner);
        $this->data['shared_corner'] = $this->post_category_model->get_by_id(FIXED_SHARED_CORNER);
        $this->data['post_shared_corner'] = $this->post_model->get_post_in_array_category_id($shared_corner,2);
        /**
         * GET POSTS IN ARCHIVE LIBRARY
         */
        $archive_library = array(FIXED_ARCHIVE_LIBRARY);
        $this->get_post_category_data(FIXED_ARCHIVE_LIBRARY,$archive_library);
        $this->data['archive_library'] = $this->post_category_model->get_by_id(FIXED_ARCHIVE_LIBRARY);
        $this->data['post_archive_library'] = $this->post_model->get_post_in_array_category_id($archive_library,3);
        $this->render('homepage_view');
    }
    public function get_post_category_data($parent = '',&$array_id){
        $categories = $this->post_category_model->fetch_post_category_menu($parent);
        foreach($categories as $key => $category){
            array_push($array_id, $category['id']);
            $this->get_post_category_data($category['id'],$array_id);
        }
    }
    function about(){
    	$this->load->model('about_model');
    	$about = $this->about_model->get_by_id_in_about($this->data['lang']);
    	return $about;
    }

    function blogs(){
    	$this->load->model('blog_model');
    	$blogs = $this->blog_model->get_all_field('desc', array('title', 'description', 'content'), $this->data['lang'], 3, 0);
    	return $blogs;
    }
}