package SpringMVC.DatabaseLayer;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;

import org.springframework.stereotype.Repository;

import SpringMVC.Model.Product;


@Repository //if not declared spring will not scan this class for autowiring
public class Implementer implements ProductDao {
	
	
	@Autowired
	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Transactional
	@Override
	public void createProduct(Product p) {
		
		hibernateTemplate.save(p);
		
	}

	@Override
	public Product readProduct(int id) {
		
		Product p = hibernateTemplate.get(Product.class,id);
		return p;
	}

	@Transactional
	@Override
	public void updateProduct(Product p) {
		hibernateTemplate.update(p);	
	}

	
	@Transactional
	@Override
	public void deleteProduct(int id) {
		
		Product p = hibernateTemplate.get(Product.class,id);
		hibernateTemplate.delete(p);
		
	}

	@Override
	public List<Product> readAllProducts() {
		List<Product> list = hibernateTemplate.loadAll(Product.class);
		return list;
	}

	@Override
	public void removeAll() {
		hibernateTemplate.deleteAll(this.readAllProducts());
		
	}
	
	

}
