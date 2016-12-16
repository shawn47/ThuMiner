package com.ise.model;

@SuppressWarnings("serial")
public class User implements java.io.Serializable {
	// Fields
	private Integer id;
	private String name;
	private String password;
	
	// Constructors
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public User(String name, String password) {
		super();
		this.name = name;
		this.password = password;
	}

	public User(Integer id) {
		super();
		this.id = id;
	}

	// Property accessors
	
	public Integer getId() {
		return id == null ? 0 : id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
