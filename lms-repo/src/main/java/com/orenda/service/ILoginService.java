package com.orenda.service;

public interface ILoginService {

	public boolean checkUser(String userEmail);
	

	public boolean sendEmail(String subject, String message, String to);


	public void savePassword(String userPass, String email);


	public void valideLog(String email,String Password);


	

	
}