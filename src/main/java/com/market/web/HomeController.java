package com.market.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController{
	
	@RequestMapping(value = "person/index")
	public String personIndex(){
		return "/market/person/index";
	}
}
