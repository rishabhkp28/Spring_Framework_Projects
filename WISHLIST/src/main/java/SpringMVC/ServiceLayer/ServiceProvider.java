package SpringMVC.ServiceLayer;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import SpringMVC.DatabaseLayer.ProductDao;
import SpringMVC.Model.Product;
import java.util.List;

@Service
public class ServiceProvider {
	
	
	@Autowired
	private ProductDao pd;
	

	public ProductDao getPd() {
		return pd;
	}

	public void setPd(ProductDao pd) {
		this.pd = pd;
	}

	public void insert(Product p)
	{
		pd.createProduct(p);
	}
	
	public Product read(int id)
	{
		return pd.readProduct(id);
	}
	public void update(Product p)
	{
		pd.updateProduct(p);
	}
	
	public void delete(int id)
	{
		pd.deleteProduct(id);
	}
	public List<Product> getAllProducts()
	{
		return pd.readAllProducts();
	}
	

}
