package com.smart.web;

import com.smart.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class LoginController{
	private UserService userService;


	@RequestMapping(value = "/login.html")
	public String loginPage(){
		return "login";
	}

	@RequestMapping(value = "/test.html")
	public String TestPage(){
		return "3";
	}

	@RequestMapping(value = "/mm.html")
	public String MainPage(){
		return "main";
	}

	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
}
