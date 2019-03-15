package product.service;

import product.model.Product;

import java.util.List;

public interface ProductService {
    int getNewID();
    List<Product> findAll();
    void save(Product product);
    Product findByID(int id);
    void update(int id, Product product);
    void remove(int id);
}
