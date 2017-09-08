package com.market.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.market.entity.User;
import com.market.service.UserService;

@Controller
public class LoginAndRegController{
	
	@Autowired
	UserService userService;
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	//登录方法
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	private String Login(Model model) {
		
		return "/market/login";  //对应目录WEB-INF/jsp/"/market/login"
	}
	
	@RequestMapping(value = "/submit", method = RequestMethod.POST)
	private ModelAndView Submit(Model model, @RequestParam("user") String username, @RequestParam("password") String password) {
		User user = userService.queryByName(username, password);
		Map<String,String> data = new HashMap<String,String>();  
		if(user != null){
			//model.addAllAttributes("",);
			return new ModelAndView("market/home",data);
		}else{
			data.put("errInfo","用户名或者密码错误，请重新输入");
			return  new ModelAndView("/market/login",data);  
		}
	}
	
	@RequestMapping(value = "/register")
	private String Register() {
		return "/market/register";  
	}
	
	//注册页跳转到主页
	@RequestMapping(value = "/register/submit")
	private String RegisterSubmit( @RequestParam("id") String username, @RequestParam("password") String password) {
		int num = userService.insertUser(username, password);
		return "redirect:/market/home";  
	}
}