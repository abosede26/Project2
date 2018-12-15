package com.hcc.advweb;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

public class Client implements Serializable {

	
	private int id;
	private String fname;
	private String lname;
	private String phone;
	private String date;
	private String time;
	private String productName;
	private String productDescpt;
	private String price;
	private String country;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductDescpt() {
		return productDescpt;
	}

	public void setProductDescpt(String productDescpt) {
		this.productDescpt = productDescpt;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public Client() {
		// TODO Auto-generated constructor stub
	}
	
	public Client(int id, String fname, String lname) {
		setId(id);
		setFname(fname);
		setLname(lname);		
	}

	@Override
	public String toString() {
		return "Client [id=" + id + ", fname=" + fname + ", lname=" + lname + ", phone=" + phone + ", date="
				+ date + ", time=" + time + ", productName=" + productName + ", productDescpt=" + productDescpt + ", price=" + price
				+ ", country=" + country + ", getId()=" + getId() + ", getFname()=" + getFname() + ", getLname()="
				+ getLname() + ", getPhone()=" + getPhone() + ", getDate()=" + getDate() + ", getTime()="
				+ getTime() + ", getProductName()=" + getProductName() + ", getProductDescpt()=" + getProductDescpt() + ", getPrice()=" + getPrice()
				+ ", getCountry()=" + getCountry() + "]";
	}
	
	

}
