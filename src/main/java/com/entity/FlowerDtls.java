package com.entity;

public class FlowerDtls {
	private int flowerId;
	private String flowerName;
	private String author;
	private String price;
	private String bookCategory;
	private String status;
	private String photoName;
	private String email;
	
	
	public FlowerDtls() {
		super();
		// TODO Auto-generated constructor stub
	}


	public FlowerDtls( String flowerName, String author, String price, String bookCategory, String status,
			String photoName, String email) {
		super();
		this.flowerName = flowerName;
		this.author = author;
		this.price = price;
		this.bookCategory = bookCategory;
		this.status = status;
		this.photoName = photoName;
		this.email = email;
	}


	public int getFlowerId() {
		return flowerId;
	}


	public void setFlowerId(int bookId) {
		this.flowerId = bookId;
	}


	public String getFlowerName() {
		return flowerName;
	}


	public void setFlowerName(String flowerName) {
		this.flowerName = flowerName;
	}


	public String getAuthor() {
		return author;
	}


	public void setAuthor(String author) {
		this.author = author;
	}


	public String getPrice() {
		return price;
	}


	public void setPrice(String price) {
		this.price = price;
	}


	public String getBookCategory() {
		return bookCategory;
	}


	public void setBookCategory(String bookCategory) {
		this.bookCategory = bookCategory;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public String getPhotoName() {
		return photoName;
	}


	public void setPhotoName(String photoName) {
		this.photoName = photoName;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	@Override
	public String toString() {
		return "BookDtls [bookId=" + flowerId + ", bookName=" + flowerName + ", author=" + author + ", price=" + price
				+ ", bookCategory=" + bookCategory + ", status=" + status + ", photoName=" + photoName + ", email="
				+ email + "]";
	}
	
	
	
}
