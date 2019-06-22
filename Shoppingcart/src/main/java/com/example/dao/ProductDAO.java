package com.example.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.example.model.Product;


public class ProductDAO {
	
	Map<Integer, Product> productsDb = new HashMap<>();
	
	{

		productsDb.put(1, new Product(1, "Fetal Tibeb", "this is new fashion zurya",100,0,true,0,0));
		productsDb.put(2, new Product(2, "Derbader !", "this is new fashion zurya",200,5,true,0,0));
		productsDb.put(3, new Product(3, "Menen Zurya", "this is new fashion zurya",300.99,5,true,0,0));
		productsDb.put(4, new Product(4, "Shifon Shinshin", "this is new fashion zurya",400.99,0,true,0,0));
		productsDb.put(5, new Product(5, "Denkoro Dembelas ", "this is new fashion zurya",500.99,5,true,0,0));
		productsDb.put(6, new Product(6, "Abu Jedid", "this is new fashion zurya",600.99,5,true,0,0));
		productsDb.put(7, new Product(7, "Eterter Menen", "this is new fashion zurya",700.99,5,true,0,0));
		productsDb.put(8, new Product(8, "Shifon Keshkesh", "this is new fashion zurya",800.99,0,true,0,0));
		productsDb.put(9, new Product(9, "Zurya Menen", "this is new fashion zurya",900.99,5,true,0,0));
		productsDb.put(10, new Product(10, "Yahibro Style", "this is new fashion zurya",1000.99,5,true,0,0));

	}
	
	public void addProduct(Product product){
		productsDb.put(product.getId(), product);
	}
	
	public void deleteProduct(int productId){
		productsDb.remove(productId);
	}
	
	public void updateProduct(Product product){
		productsDb.put(product.getId(), product);
	}
	
	public List<Product> getAllProducts(){
		return new ArrayList<>(productsDb.values());
	}
	
	public Product getProductById(int productId){
		return productsDb.get(productId);
	}

	public int genId() {
		return productsDb.size()+1;
	}
}
