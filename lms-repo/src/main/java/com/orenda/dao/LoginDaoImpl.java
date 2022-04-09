package com.orenda.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.orenda.model.UserLogin;

//@SuppressWarnings("deprecation")
@Repository
public class LoginDaoImpl implements ILoginDao {
	
	@Autowired
	SessionFactory sessionfactory;

	@Override
	public UserLogin verifyUser(String email) {
		Session session = sessionfactory.openSession();
	    UserLogin userdetails = new UserLogin();
		Query query = session.createQuery("from UserLogin where email=:employeeEmail1");
		List user = query.setParameter("employeeEmail1", email).getResultList();
		System.out.println(user+"   mmmmmmmmmmmmmmm");
		if(user.size() > 0) {
			userdetails = (UserLogin) user.get(0);
        }
		
		return  userdetails;
	}

	@Override
	public UserLogin savePassword(String b,String email) {
		System.out.println("inside of save dao");
		Session session = sessionfactory.getCurrentSession();
	    UserLogin userlogin = new UserLogin();
		Query query=session.createQuery("update UserLogin set Password =:pass where email =:userEmail");
		query.setParameter("pass", b);
		query.setParameter("userEmail", email);
		query.executeUpdate();
		return userlogin;
		
	
		
		
	}

	@Override
	public UserLogin valideLog(String email) {
		Session session = sessionfactory.openSession();
	    UserLogin userdetails = new UserLogin();
		Query query = session.createQuery("from UserLogin where userEmail=:employeeEmail1");
		List user = query.setParameter("employeeEmail1", email).getResultList();
		System.out.println(user+"   mmmmmmmmmmmmmmm");
		if(user.size() > 0) {
			userdetails = (UserLogin) user.get(0);
        }
		
		return  userdetails;
	}



}
