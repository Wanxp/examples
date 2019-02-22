package com.wanxp.thymeleafdemo.repository;

import com.wanxp.thymeleafdemo.model.CacheManager;
import com.wanxp.thymeleafdemo.model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductRepository  {

    private static ProductRepository productRepository;
    List<Product> products;

    private ProductRepository() {
        products = (List<Product>)CacheManager.getCache().get("product");
    }

    public static ProductRepository getInstance() {
        if (productRepository == null) {
            synchronized (productRepository) {
                if (productRepository == null)
                    productRepository = new ProductRepository();
            }
        }
        return productRepository;
    }

    public List<Product> findAll() {
        return products;
    }

    public Product findById(Integer id) {
        return products.stream().filter(x -> {
             return x.getId().equals(id);
        }).findFirst().orElse(null);
    }


}
