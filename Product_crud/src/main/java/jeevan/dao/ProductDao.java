package jeevan.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;


import jeevan.model.Product;

@Component
public class ProductDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	//create
	@Transactional
	public void creteProduct(Product product) {
		//product
		this.hibernateTemplate.saveOrUpdate(product);
		
	}
	//get all
	public List<Product> getProducts(){
		List<Product> products=this.hibernateTemplate.loadAll(Product.class);
		return products;
		
	}
	
	//delete single product
	@Transactional
	public void deleteProduct(int pid)
	{
		Product p=this.hibernateTemplate.load(Product.class,pid);
		this.hibernateTemplate.delete(p);
	}
	
	//get single product
	public Product getProduct(int pid) {
		return this.hibernateTemplate.get(Product.class, pid);
	}

}
