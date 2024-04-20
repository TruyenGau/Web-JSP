package com.entity;

public class Comment {
	private int id;
	private int user_id;
	private String comment;
	private String name;
	

	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public int getUser_id() {
		return user_id;
	}



	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}



	public String getComment() {
		return comment;
	}


	public void setComment(String comment) {
		this.comment = comment;
	}





	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public Comment() {
	
	}
}
