package service;


import DAO.ProductDao;
import model.Category;
import model.Product;

import java.sql.SQLException;
import java.util.ArrayList;

public class ProductService {
    private final ProductDao productDao = new ProductDao();

    public ArrayList<Product> getProducts() {
        return productDao.getAllProduct();
    }

    public Product getProduct(int id) {
        return productDao.getProduct(id);
    }

    public boolean createProduct(Product product, int id_category) {
        return productDao.createProduct(product, id_category);
    }

    public boolean deleteProduct(int id) throws SQLException {
        return productDao.deleteProduct(id);
    }

    public boolean editProduct(Product product, int id_category) throws SQLException {
        return productDao.updateProduct(product, id_category);
    }

    public ArrayList<Category> getCategories() {
        return productDao.getAllCategory();
    }
}
