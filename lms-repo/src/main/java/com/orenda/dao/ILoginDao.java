package com.orenda.dao;



import com.orenda.model.UserLogin;

public interface ILoginDao {

	UserLogin verifyUser(String userEmail);

	UserLogin savePassword(String userPass, String email);

	UserLogin valideLog(String email);

	


}
