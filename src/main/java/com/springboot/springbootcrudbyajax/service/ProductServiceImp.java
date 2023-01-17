package com.springboot.springbootcrudbyajax.service;

import com.springboot.springbootcrudbyajax.model.Product;
import com.springboot.springbootcrudbyajax.repo.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
@Service
public class ProductServiceImp implements ProductService{
    @Autowired
    private ProductRepository productRepository;


    @Override
    public List<Product> getAllProducts() {
        System.out.println("inside getAllProducts method in ProductServiceImp class");
        return this.productRepository.findAll();
    }

    @Override
    public Product getProductById(String id) {
        System.out.println("inside getProductById method in ProductServiceImp class");
        Optional<Product> productbyid= this.productRepository.findById(id);
        Product product=null;
        if(productbyid.isPresent()){
            product=productbyid.get();
        }
        return product;
    }

    @Override
    public Product saveAndUpdateProduct(Product product) {
        System.out.println("inside saveAndUpdateProduct method in ProductServiceImp class");
        return   this.productRepository.save(product);
    }

    @Override
    public void deleteProductById(String id) {
        System.out.println("inside deleteProductById method in ProductServiceImp class");
       this.productRepository.deleteById(id);
    }

    @Override
    public void deleteAllProducts() {
        System.out.println("inside deleteAll method in ProductServiceImp class");
      this.productRepository.deleteAll();
    }
}
