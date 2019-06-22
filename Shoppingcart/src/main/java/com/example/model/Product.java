package com.example.model;

import java.util.UUID;

public class Product {

	private int id;
	private String code;
	private String name;
	private String description;
	private double unitPrice;
	private int quantity;
	private boolean active;
	private int purchases;
	private int views;

	public Product() {
		this.code = UUID.randomUUID().toString();
	}

	public Product(int id, String name,  String description, double unitPrice, int quantity, boolean active, int purchases, int views) {
		this.id = id;
		this.name = name;

		this.description = description;
		this.unitPrice = unitPrice;
		this.quantity = quantity;
		this.active = active;
		this.purchases = purchases;
		this.views = views;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public double getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(double unitPrice) {
		this.unitPrice = unitPrice;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	public int getPurchases() {
		return purchases;
	}

	public void setPurchases(int purchases) {
		this.purchases = purchases;
	}

	public int getViews() {
		return views;
	}

	public void setViews(int views) {
		this.views = views;
	}

	@Override
	public String toString() {
		return "Product{" +
				"id=" + id +
				", code='" + code + '\'' +
				", name='" + name + '\'' +
				", description='" + description + '\'' +
				", unitPrice=" + unitPrice +
				", quantity=" + quantity +
				", active=" + active +
				", purchases=" + purchases +
				", views=" + views +
				'}';
	}
}
