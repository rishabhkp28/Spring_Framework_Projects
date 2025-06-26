package SpringMVC.DatabaseLayer;

import SpringMVC.Model.Product;
import java.util.*;

public interface ProductDao {
	
	public void createProduct(Product p);
	public Product readProduct(int id);
	public void updateProduct(Product p);
	public void deleteProduct(int id);
	public List<Product> readAllProducts();
	public void removeAll();
	

}
