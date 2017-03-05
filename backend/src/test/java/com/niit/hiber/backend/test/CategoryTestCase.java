package com.niit.hiber.backend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.hiber.backend.dao.CategoryDAO;
import com.niit.hiber.backend.dto.Category;

public class CategoryTestCase {

	private static AnnotationConfigApplicationContext context;
	
	
	private static CategoryDAO categoryDAO;
	
	private Category category;
	
	
	@BeforeClass
	public static void init()
	{
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.hiber.backend");
		context.refresh();
		categoryDAO = (CategoryDAO)context.getBean("categoryDAO");
	}
	
	
	
	/*@Test
	public void testAddCategory()
	{
		category = new Category();
		category.setName("cupcake");
		category.setDescription("this is pastry.");
		category.setImageUrl("CAT_1.png");
		assertEquals("Successfully added a category inside the table", true,categoryDAO.add(category));
	}*/
	
	@Test
	public void testUpdateCategory()
	{
		category = categoryDAO.get(2);
		category.setName("apple");
		assertEquals("Successfully updated a category in the table", true,categoryDAO.update(category));
	}
	
	
	
}
