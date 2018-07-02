<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Localtion_model extends MY_Model {

    public $table = 'localtion';

    public function __construct() {
        parent::__construct();
    }
    public function get_all_localtion() {
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('is_deleted', 0);
        return $result = $this->db->get()->result_array();
    }
    public function get_all_group_by() {
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('is_deleted', 0);
        $this->db->group_by('area');
        return $result = $this->db->get()->result_array();
    }
    public function get_by_slug_localtion($slug='') {
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('is_deleted', 0);
        $this->db->where('slug', $slug);
        return $result = $this->db->get()->row_array();
    }
    public function get_by_area($area='') {
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('is_deleted', 0);
        $this->db->where('area', $area);
        return $result = $this->db->get()->result_array();
    }
    public function get_librarylocaltion_by_id_array($librarylocaltion = array()){
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where_in('id', $librarylocaltion);
        return $result = $this->db->get()->result_array();
    }
    public function get_librarylocaltion_by_not_id_array($notlibrarylocaltion = array(),$area){
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('area', $area);
        $this->db->where_not_in('id', $notlibrarylocaltion);
        return $result = $this->db->get()->result_array();
    }
    public function get_by_id_array($id = array()) {
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('is_deleted', 0);
        $this->db->where_in('id', $id);
        return $this->db->get()->row_array();
    }
    public function get_by_id_array_lang($id = array()) {
        $this->db->select($this->table .'.*');
        $this->db->from($this->table);
        $this->db->where($this->table .'.is_deleted', 0);
        $this->db->where_in('id', $id);
        return $this->db->get()->result_array();
    }
    public function fetch_row_by_slug($slug){
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('is_deleted', 0);
        $this->db->where('slug', $slug);
        return $this->db->get()->row_array();
    }
}
