package com.orenda.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="tbl_user_details")
public class UserDetails {
	
	@Id
	@Column(name="user_id")
	private int id;
	@Column(name="user_type")
	private String userType;
	@Column(name="user_email")
	private String userEmail;
	
	
	
	public UserDetails() {
		// TODO Auto-generated constructor stub
	}

	public UserDetails(int id, String userType, String userEmail) {
		super();
		this.id = id;
		this.userType = userType;
		this.userEmail = userEmail;
	
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}


	@Override
	public String toString() {
		return "UserDetails [id=" + id + ", userType=" + userType + ", userEmail=" + userEmail +  "]";
	}
	
	
	

}
