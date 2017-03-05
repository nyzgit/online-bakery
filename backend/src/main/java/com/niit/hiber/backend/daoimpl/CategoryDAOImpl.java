package com.niit.hiber.backend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.niit.hiber.backend.dao.CategoryDAO;
import com.niit.hiber.backend.dto.Category;


@Repository("categoryDAO")
@Transactional(propagation = Propagation.SUPPORTS, readOnly=false)
public class CategoryDAOImpl implements CategoryDAO {

	

	@Autowired
	private SessionFactory sessionFactory;
	
	private static List<Category> categories = new ArrayList<Category>();

	

	@SuppressWarnings("unchecked")
	public List<Category> list() {
		categories = (List<Category>)sessionFactory.openSession().createQuery("FROM Category").list();
		/*for(Product pro : products)
		{
			System.out.println(pro.getPname());
		}*/
		return categories;
	}

	public Category get(int id) {
		for(Category category : categories)
		{
			if(category.getId() == id) return category;
		}
		return null;
	}

	
	
	
	@Transactional
	public boolean add(Category category) {

		try	
		{
			sessionFactory.getCurrentSession().persist(category);
			
			
			return true;
		}catch(Exception ex)
		{
			ex.printStackTrace();
			return false;
		}
		
		
		
		
		// TODO Auto-generated method stub
		//return false;
	}
	
	@Transactional
	public boolean update(Category category) {
	
		try	
		{
			sessionFactory.getCurrentSession().update(category);
			
			
			return true;
		}catch(Exception ex)
		{
			ex.printStackTrace();
			return false;
		}
	}

	public boolean delete(Category category) {
		// TODO Auto-generated method stub
		return false;
	}

}
