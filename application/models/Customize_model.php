<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Customize_model extends MY_Model {

	public $table = 'customize';
	public function __construct(){
		parent::__construct();
		//Do your magic here
	}

	public function get_all_customize_with_pagination_search($status, $limit = NULL, $start = NULL, $keywords = '', $date_from = '', $date_to = ''){
		$this->db->from($this->table);
    	$this->db->select($this->table .'.*, customize.id as customize_id, product.title as product_title, product.id, product.datetitle');
    	$this->db->join('product', $this->table .'.product_id = product.id');
        $this->db->like('product.title', $keywords);
    	$this->db->where($this->table .'.is_deleted', 0);
        $this->db->where($this->table .'.status', $status);
        if($date_from != ''){
            $this->db->where($this->table .'.time >=', $date_from);
        }
        if($date_to != ''){
            $this->db->where($this->table .'.time <=', $date_to);
        }
    	$this->db->limit($limit, $start);
    	$this->db->order_by($this->table .'.id', 'desc');
    	return $result = $this->db->get()->result_array();
    }

    public function count_search_customize($status, $keywords = '', $date_from = '', $date_to = ''){
        $this->db->from($this->table);
        $this->db->select($this->table .'.*, customize.id as customize_id, product.title as product_title, product.id, product.datetitle');
        $this->db->join('product', $this->table .'.product_id = product.id');
        $this->db->like('product.title', $keywords);
        $this->db->where($this->table .'.is_deleted', 0);
        $this->db->where($this->table .'.status', $status);
        $this->db->where($this->table .'.is_deleted', 0);
        if($date_from != ''){
            $this->db->where($this->table .'.time >=', $date_from);
        }
        if($date_to != ''){
            $this->db->where($this->table .'.time <=', $date_to);
        }

        return $result = $this->db->get()->num_rows();
    }

}

/* End of file customize_model.php */
/* Location: ./application/models/customize_model.php */