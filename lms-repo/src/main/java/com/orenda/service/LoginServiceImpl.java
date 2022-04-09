package com.orenda.service;

import java.util.Base64;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.orenda.dao.ILoginDao;
import com.orenda.model.UserLogin;

@Service
@Transactional
public class LoginServiceImpl implements ILoginService {

	@Autowired
	ILoginDao dao;

	@Override
	public boolean checkUser(String email) {
		UserLogin user = dao.verifyUser(email);
		System.out.println(user + "   kkkkkkkkkkkkkkkk");
		System.out.println("we are in service");

		if (email != null && email.equalsIgnoreCase(user.getEmail())) {
			System.out.println("user is valid");

			String subject = "Here is a link for creating  a new password";
			String message = (" Click on the below link" + "    " + "   " + "    "
					+ "http://localhost:8080/lms/updatePass?email=" + email + "");
			String to = email;

			this.sendEmail(subject, message, to);
			return true;

		} else {
			System.out.println("user is invalid");
			return false;
		}

	}

	@Override
	public boolean sendEmail(String subject, String message, String to) {

		boolean f = false;

		String from = "newemailid0021@gmail.com";

		String host = "smtp.gmail.com";

		Properties properties = System.getProperties();
		System.out.println(properties);

		// setting important information to properties object
		// host set

		properties.put("mail.smtp.host", host);
		properties.put("mail.smto.port", "587");
		properties.put("mail.smtp.ssl.enable", "true");
		properties.put("mail.smtp.auth", "true");

		// to get the session object....

		Session session = Session.getInstance(properties, new Authenticator() {

			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("vishalgavale143@gmail.com", "143143143");

			}
		});

		session.setDebug(true);

		MimeMessage m = new MimeMessage(session);

		try {

			// add
			m.setFrom(from);
			

			// adding recipient to message
			m.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

			// adding subject to message
			m.setSubject(subject);

			// adding text to message
			m.setText(message);

			// send

			// send the message using Transport class

			Transport.send(m);

			System.out.println("sent success.............");
			f = true;

		} catch (Exception e) {

			e.printStackTrace();
		}

		return false;

	}

	@Override
	public void savePassword(String userPass,String email) {
		System.out.println("inside of service");
		System.out.println("normal password"+" "+userPass);
		String b=Base64.getEncoder().encodeToString(userPass.getBytes());
		System.out.println("encripted password"+" "+b);
		 dao.savePassword(b,email);
	
		
	}

	@Override
	public void valideLog(String email, String password) {
		
		 dao.valideLog(email);
	}
	
	
}
