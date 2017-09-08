package com.market.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PersonInfoController {

	//个人信息
	@RequestMapping(value="person/information")
	public String getInfoPage(){
		return "market/person/infomation";
	}
	
	//安全设置
	@RequestMapping(value="person/safety")
	public String getSafetyPage(){
		return "market/person/safety";
	}
	
	//收货地址
	@RequestMapping(value="person/address")
	public String getAddressPage(){
		return "market/person/safety";
	}
}
