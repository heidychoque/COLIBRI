<?php
class Product_model{
    //Get All Products

    public function get_products(){
        $this-> db->select('*');
        $this->db-> from('productos');
        $query = $this->db->get();
        return $query-> result();
    }
}
