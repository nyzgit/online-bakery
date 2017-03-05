package com.niit.hiber.backend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.niit.hiber.backend.dao.ProductDAO;
import com.niit.hiber.backend.dto.Product;


@Repository("productDAO")
@Transactional(propagation = Propagation.SUPPORTS,readOnly= false)
public class ProductDAOImpl implements ProductDAO {


	@Autowired
	private SessionFactory sessionFactory;
	
	private static List<Product> products = new ArrayList<Product>();
	
		/*static 
	{
		Product prod = new Product();
		
		product 1
		prod.setId(1);
		prod.setPname("Defender Case");
		prod.setDescription("This is a defender case for mobiles");
		prod.setImageUrl("defender_case.jpg");
		products.add(prod);
	
	}
	
*/	
	
	@SuppressWarnings("unchecked")
	public List<Product> list() {
		
	products = (List<Product>)sessionFactory.openSession().createQuery("FROM Product").list();
	/*for(Product pro : products)
	{
		System.out.println(pro.getPname());
	}*/
	return products;
	}

	public Product getProduct(int id) {
		
		products = (List<Product>)sessionFactory.openSession().createQuery("FROM Product").list();
		for(Product pro : products)
		{
			if(pro.getId() == id)
			return pro;
		}
		return null;
		}
	

/*	public Product getProduct(int id)
	{
		for(Product product : products)
		{
			if(product.getId() == id) return product;
		}
		return null;
	}
	*/
	
}
