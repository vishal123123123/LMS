package com.orenda.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_login")
public class UserLogin {
	
	@Id
	@GeneratedValue(strategy =  GenerationType.AUTO)
	private int id;
	@Column(name = "user_password")
	private String Password;
	@Column(name = "user_email")
	private String email;
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public UserLogin() {
		super();
		
	}
	
	
	public UserLogin(int id, String password, String email) {
		super();
		this.id = id;
		Password = password;
		this.email = email;
	}
	
	
	@Override
	public String toString() {
		return "UserLogin [id=" + id + ", Password=" + Password + ", email=" + email + "]";
	}
	

	
 
	
}