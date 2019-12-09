package com.wanxp.thymeleafdemo.model;

import java.math.BigDecimal;
import java.util.List;

public class Product {
    private Integer id;
    private String name;
    private BigDecimal price;
    private Boolean inStock;
    private List<Comment> conments;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public Boolean getInStock() {
        return inStock;
    }

    public void setInStock(Boolean inStock) {
        this.inStock = inStock;
    }

    public List<Comment> getConments() {
        return conments;
    }

    public void setConments(List<Comment> conments) {
        this.conments = conments;
    }
}
