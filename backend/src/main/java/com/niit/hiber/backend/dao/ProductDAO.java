package com.niit.hiber.backend.dao;

import java.util.List;

import com.niit.hiber.backend.dto.Product;

public interface ProductDAO {

	List<Product> list();
	
	Product getProduct(int id);
	
}
