package org.logistics.controller;

import java.util.List;

import org.logistics.model.UserInfo;
import org.logistics.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 
 * @author zcy
 *
 */
@Controller
@RequestMapping("/main")
public class MainController {

	
	@RequestMapping("/main")
	public String showUserInfo(){
		
		return "/main";
	}
	
	@RequestMapping("/left")
	public String showLeft(){
		
		return "/menu/left2";
	}
	
	@RequestMapping("/top")
	public String showTop(){
		
		return "/menu/top";
	}
	
	@RequestMapping("/menu")
	public String showMenu(){
		
		return "/menu/menu";
	}
	
	
}
