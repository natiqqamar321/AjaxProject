package com.springboot.springbootcrudbyajax.controller;

import com.springboot.springbootcrudbyajax.model.Product;
import com.springboot.springbootcrudbyajax.service.ProductServiceImp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin(origins = "*")
public class ProductRestController {
    @Autowired
    private ProductServiceImp productServiceImp;

    @GetMapping("/product")
    public ResponseEntity<List<Product>> getProductsList(){
        return new ResponseEntity<List<Product>>(productServiceImp.getAllProducts(), HttpStatus.OK);
    }

    @GetMapping("/product/{id}")
    public ResponseEntity<Product> getProductById(@PathVariable String id){
        return new ResponseEntity<Product>(productServiceImp.getProductById(id),HttpStatus.OK);
    }

    @PostMapping("/product/save")
    public ResponseEntity<Product> saveorUpdate(@RequestBody Product product){
        this.productServiceImp.saveAndUpdateProduct(product);
      return new ResponseEntity<Product>(this.productServiceImp.saveAndUpdateProduct(product),HttpStatus.OK);
    }

    @DeleteMapping("/product/delete/{id}")
    public ResponseEntity<Void> deleteById(@PathVariable String id){
        this.productServiceImp.deleteProductById(id);
        return new ResponseEntity<Void>(HttpStatus.OK);
    }

    @DeleteMapping("/product/delete")
    public ResponseEntity<Void> deleteAll(){
        this.productServiceImp.deleteAllProducts();
        return new ResponseEntity<Void>(HttpStatus.OK);
    }
}
