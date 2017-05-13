<?php

    public function index()
{
    //Get All Products
    $data['products'] = $this-->Product_model-->get_products();

    //Load View
    $data['main_content'] = 'products';
    $this-->load-->view('layouts/main', $data);
}
