package com.niit.hiber.backend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.hiber.backend.dao.CategoryDAO;
import com.niit.hiber.backend.dto.Category;


@Repository("categoryDAO")
@Transactional
public class CategoryDAOImpl implements CategoryDAO {

	

	@Autowired
	SessionFactory sessionFactory;

	/*
	 * Method for List all products.
	 * */
	@SuppressWarnings("unchecked")
	public List<Category> list() {

		return sessionFactory.getCurrentSession().createQuery("from Product where active = TRUE").list();
	}
	
	/*
	 * Method to product by ID
	 * */
	public Category get(int id) {

		Category category = sessionFactory.getCurrentSession().get(Category.class, Integer.valueOf(id));
		return category;

	}

	/*
	 * Method to add product in the table.
	 * */
	public boolean add(Category category) {
		try {
			sessionFactory.getCurrentSession().persist(category);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	/*
	 * Method to update Product.
	 * */
	public boolean update(Category category) {
		try {
			
			sessionFactory.getCurrentSession().update(category);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}



	public boolean delete(Category category) {
		// TODO Auto-generated method stub
		return false;
	}



	

}
