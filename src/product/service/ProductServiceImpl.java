package product.service;

import product.model.Product;

import java.util.*;

public class ProductServiceImpl implements ProductService {
    private static Map<Integer, Product> products;

    static {
        products = new HashMap<Integer, Product>();
        products.put(1, new Product(1, "Vinfast Lux SA2.0", 650000000, "Chiếc ô tô siêu phẩm rất đẹp và sang trọng", "Vinfast"));
        products.put(2, new Product(2, "Samsung Galaxy S10", 20000000, "Siêu phẩm Galaxy S10 kỷ niệm 10 năm dòng Galaxy", "Samsung"));
        products.put(3, new Product(3, "Sim 5G Tomato", 12500000, "Công nghệ 5G tiên phong cách mạng công nghiệp 4.0", "Viettel"));
    }

    @Override
    public int getNewID() {
        Random rand = new Random();
        return rand.nextInt(10000);
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public Product findByID(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }
}
