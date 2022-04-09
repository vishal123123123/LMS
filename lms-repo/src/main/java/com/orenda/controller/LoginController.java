package com.orenda.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.orenda.service.ILoginService;

@Controller
public class LoginController {

	@Autowired
	ILoginService service;

	@GetMapping("/")
	public String loginUser() {     
		return "login";

	}
	@GetMapping("/login")
	public String login(@RequestParam("userEmail") String email,@RequestParam("password") String Password) {  
		service.valideLog(email,Password);
		return "Sucess";

	}
	
	@GetMapping("/forgot")
	public String forgotPassword() {      
		return "Forget-Page";

	}

	@GetMapping("/validateUser")
	public String checkUser(@RequestParam("email") String email, Model model) {

		boolean flag = service.checkUser(email);
		if (flag) {
			System.out.println("Link send Successfully");
			model.addAttribute("msg", "Link send successfully on your mail");  
			// return "redirect:/Forget-page";
			//return "Forget-Page";

		} else {
			model.addAttribute("msg", "user is invalid");
		}

		return "Forget-Page";

	}

	@GetMapping("/updatePass")
	public String updatePassword(Model model, @RequestParam("email") String email) {
		
		System.out.println("inside of page");
		System.out.println(email);
		model.addAttribute("email", email);
		return "ForgetPasswordLink-page";

	}
	
	
	 @GetMapping("/savePassword")
	 public String savePassword(@RequestParam("up")String userPass,@RequestParam("email") String email) {
	   System.out.println("password save"+" "+userPass);
	  System.out.println("useremail"+" "+email);
	 service.savePassword(userPass,email);
	 return "ForgetPasswordLink-page";
	 
	  }
	 

}