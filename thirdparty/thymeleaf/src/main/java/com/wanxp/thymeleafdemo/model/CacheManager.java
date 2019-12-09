package com.wanxp.thymeleafdemo.model;

import com.wanxp.thymeleafdemo.repository.ProductRepository;

import java.math.BigDecimal;
import java.util.*;

public class CacheManager {
    private static CacheManager CacheManager;
    private static Map<String, Object> cache = new HashMap<String, Object>() ;

    private static final Integer NUM_PRODUCT = 10;
    private static final Integer NUM_CUSTOMER = 10;
    private static final Integer NUM_ORDER = 10;
    private static final Integer NUM_ORDERLINE_MAX = 10;

    public static CacheManager getInstance() {
        if (CacheManager == null) {
            synchronized (CacheManager) {
                if (CacheManager == null)
                    CacheManager = new CacheManager();
            }
        }
        return CacheManager;
    }

    private CacheManager() {
        init();
    }

    private void init() {
        initProduct();
        initCustomer();
        initOrder();
    }

    private void initOrder() {
        cache.put("order", createOrders(NUM_ORDER));
    }

    private void initCustomer() {
        cache.put("customer", createCustomers(NUM_CUSTOMER));
    }

    private void initProduct() {
        cache.put("product", createProducts(NUM_PRODUCT));
    }


    public List<Product> findAll() {
        List<Product> products = new ArrayList<Product>();
        Product product = new Product();
        return null;
    }

    private List<Comment> createComment() {
        List<Comment> comments = new ArrayList<Comment>();
        Comment comment = new Comment();
        comment.setId(0);
        comment.setText("first comment");
        Comment comment1 = new Comment();
        comment1.setId(0);
        comment1.setText("second comment");
        comments.add(comment);
        comments.add(comment1);
        return comments;
    }

    private List<Customer> createCustomers(Integer customerNum) {
        List<Customer> customers = new ArrayList<Customer>();
        for (int i = 0;i < customerNum;i++) {
            Customer customer = new Customer();
            customer.setId(i);
            customer.setName("Tom_" + i);
            customer.setCunstomerSince(Calendar.getInstance());
        }
        return customers;
    }

    private List<Order> createOrders(Integer orderNum) {
        List<Order> orders = new ArrayList<Order>();
        for (int i = 0;i < orderNum;i++) {
            Order order = new Order();
            order.setCustomer(((List<Customer>)cache.get("customers")).get(new Random(NUM_CUSTOMER).nextInt()));
            order.setId(i);
            order.setDate(Calendar.getInstance());
            order.setOrderLines(createOrderLines());
        }
        return orders;
    }

    private Set<OrderLine> createOrderLines() {
        int max = new Random(NUM_ORDERLINE_MAX).nextInt();
        Random random = new Random(NUM_PRODUCT);
        Map<Product, Integer> productIntegerMap = new HashMap<Product, Integer>();
        final Set<OrderLine> orderLines = new HashSet<OrderLine>();
        for (int i = 0;i < max;i++) {
            Product product = ((List<Product>)cache.get("product")).get(random.nextInt());
            if (productIntegerMap.containsKey(product))
                productIntegerMap.put(product,productIntegerMap.get(product) + i);
            else
                productIntegerMap.put(product, i);
        }
        productIntegerMap.entrySet().stream().forEach(e -> {
            OrderLine orderLine = new OrderLine();
            orderLine.setProduct(e.getKey());
            orderLine.setAmount(e.getValue());
            orderLine.setPurchasePrice(e.getKey().getPrice());
            orderLines.add(orderLine);
        });
        return orderLines;
    }


    private List<Product> createProducts(int productNum) {
        List<Product> products = new ArrayList<Product>();
        for (int i = 0;i < productNum;i++) {
            Product product = new Product();
            product.setId(i);
            product.setName("Product_" + i);
            product.setPrice(BigDecimal.valueOf(i * 100));
            product.setInStock(i%2 == 0);
            product.setConments(createComment());
        }
        return products;
    }

    public static Map<String, Object> getCache() {
        return cache;
    }
}
