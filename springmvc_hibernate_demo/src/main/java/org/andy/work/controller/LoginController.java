package org.andy.work.controller;

import org.andy.work.entity.AcctUser;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/login")
public class LoginController {
	
	private static Logger LOGGRR = Logger.getLogger(LoginController.class);
	
	@RequestMapping("/login")
	public String login(@ModelAttribute AcctUser acctUser,
			@RequestParam(required=false) Boolean logout,
			Errors errors){
		LOGGRR.info("=====login=====");
		
		if(null != logout){
			errors.reject("msg","已经安全退出");
		}
		
		return "/login/login";
		
	}

}
