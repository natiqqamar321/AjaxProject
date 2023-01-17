package com.springboot.springbootcrudbyajax.service;

import com.springboot.springbootcrudbyajax.model.Product;

import java.util.List;

public interface ProductService {

    //method for fetching all the list of products
    public List<Product> getAllProducts();
    //method for fetching product by id
    public Product getProductById(String id);
    //method for sava and update product
    public Product saveAndUpdateProduct(Product product);
    //method for delete product by id
    public void deleteProductById(String id);
    //method for delete all products
    public void deleteAllProducts();

}
