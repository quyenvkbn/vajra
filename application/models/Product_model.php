<?php 

/**
* 
*/
class Product_model extends MY_Model{
	
	public $table = 'product';
	public function get_by_parent_id($parent_id, $order = 'desc'){
		$this->db->select('*');
        $this->db->from($this->table);
        $this->db->where($this->table .'.is_deleted', 0);
        $this->db->where($this->table .'.is_activated', 0);
        if(is_numeric($parent_id)){
            $this->db->where('id', $parent_id);
        }
        $this->db->group_by('id');
        $this->db->order_by("id", $order);

        return $result = $this->db->get()->row_array();
	}
    public function get_by_product_category_id($product_category_id = array()) {
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('is_deleted', 0);
        $this->db->where('is_activated', 0);
        $this->db->where_in('product_category_id', $product_category_id);
        $this->db->group_by("id");
        return $this->db->get()->result_array();
    }
    // public function get_all($select = array(), $lang = '',$order="asc") {
    //     $this->db->query('SET SESSION group_concat_max_len = 10000000');
    //     $this->db->select($this->table .'.*');
    //     if(in_array('title', $select)){
    //         $this->db->select('GROUP_CONCAT('. $this->table_lang .'.title ORDER BY '. $this->table_lang .'.language separator \' ||| \') as '. $this->table .'_title');
    //     }
    //     if(in_array('description', $select)){
    //         $this->db->select('GROUP_CONCAT('. $this->table_lang .'.description ORDER BY '. $this->table_lang .'.language separator \' ||| \') as '. $this->table .'_description');
    //     }
    //     if(in_array('content', $select)){
    //         $this->db->select('GROUP_CONCAT('. $this->table_lang .'.content ORDER BY '. $this->table_lang .'.language separator \' ||| \') as '. $this->table .'_content');
    //     }
    //     if($select == null){
    //         $this->db->select('GROUP_CONCAT('. $this->table_lang .'.title ORDER BY '. $this->table_lang .'.language separator \' ||| \') as '. $this->table .'_title');
    //         $this->db->select('GROUP_CONCAT('. $this->table_lang .'.description ORDER BY '. $this->table_lang .'.language separator \' ||| \') as '. $this->table .'_description');
    //         $this->db->select('GROUP_CONCAT('. $this->table_lang .'.content ORDER BY '. $this->table_lang .'.language separator \' ||| \') as '. $this->table .'_content');
    //     }
    //     $this->db->from($this->table);
    //     $this->db->join($this->table_lang, $this->table_lang .'.'. $this->table .'_id = '. $this->table .'.id', 'left');
    //     if($lang != ''){
    //         $this->db->where($this->table_lang .'.language', $lang);
    //     }
    //     $this->db->where($this->table .'.is_deleted', 0);
    //     $this->db->where($this->table .'.is_activated', 0);
    //     $this->db->group_by($this->table .".id");
    //     $this->db->order_by($this->table .".sort", $order);
    //     return $this->db->get()->result_array();
    // }
    public function get_all_for_remove($id_localtion='') {
        $this->db->select('id,librarylocaltion');
        $this->db->from($this->table);
        $this->db->like('librarylocaltion', '"'.$id_localtion.'"')->or_like('librarylocaltion', ','.$id_localtion.',')->or_like('librarylocaltion', ','.$id_localtion.'"')->or_like('librarylocaltion', '"'.$id_localtion.',');
        $this->db->where('is_deleted', 0);
        return $result = $this->db->get()->result_array();
    }

    public function get_by_slug($slug, $select = array(), $lang = '') {
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('is_deleted', 0);
        $this->db->where('slug', $slug);
        $this->db->limit(1);
        return $this->db->get()->row_array();
    }
    public function get_by_slug_lang($slug) {
        $this->db->select('product.*, product_category.title as parent_title, product_category.slug as parent_slug');
        $this->db->from($this->table);
        $this->db->join('product_category', 'product_category.id = product.product_category_id');
        $this->db->where($this->table .'.is_deleted', 0);
        $this->db->where($this->table .'.slug', $slug);
        $this->db->limit(1);
        return $this->db->get()->row_array();
    }
    public function get_by_product_category_id_array($product_category_id=array(),$limit=0,$order='asc') {
        $this->db->select('product.*, product_category.title as parent_title, product_category.slug as parent_slug');
        $this->db->from($this->table);
        $this->db->join('product_category', 'product_category.id = product.product_category_id');
        $this->db->where($this->table .'.is_deleted', 0);
        $this->db->where_in('product.product_category_id', $product_category_id);
        $this->db->group_by('product.id');
        $this->db->order_by('product.id', $order);
        $this->db->limit($limit);
        return $this->db->get()->result_array();
    }     

    public function rating_by_id($id=''){
        $this->db->select('count_rating, total_rating');
        $this->db->from($this->table);
        $this->db->where('id', $id);
        $this->db->where('is_deleted', 0);
        return $result = $this->db->get()->row_array();
    }
    public function get_all($order = 'desc'){
        $this->db->select('product.*, product_category.title as parent_title, product_category.slug as parent_slug');
        $this->db->from($this->table);
        $this->db->join('product_category', 'product_category.id = product.product_category_id');
        $this->db->where($this->table .'.is_deleted', 0);
        $this->db->group_by('product.id');
        $this->db->order_by('product.id', $order);
        return $this->db->get()->result_array();
    }
}