package com.wanxp.thymeleafdemo.service;

import com.wanxp.thymeleafdemo.model.Product;
import com.wanxp.thymeleafdemo.repository.ProductRepository;

import java.util.List;

public class ProductService {
    public List<Product> findAll() {
        return ProductRepository.getInstance().findAll();
    }
    public Product findById(Integer id) {
        return ProductRepository.getInstance().findById(id);
    }
}
