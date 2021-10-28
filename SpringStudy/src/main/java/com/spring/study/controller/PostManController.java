package com.spring.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.study.model.CustomerModel;

@Controller
public class PostManController {

	@RequestMapping(value="/postManTest", method = RequestMethod.POST, produces = "text/html; charset=UTF-8")
	@ResponseBody
	public String PostManController(@RequestParam String id,
									@RequestParam String pwd,
									@RequestParam String name,
									@RequestParam String phone) {
		return "사용자 id : " + id + " 사용자 pwd : " + pwd + " 사용자 이름 : " + name + " 사용자 전화번호 : " + phone;
	}
	
	@RequestMapping(value="/postManDelivery", method = RequestMethod.POST, produces = "text/html; charset=UTF-8")
	@ResponseBody
	public String postDelivery(CustomerModel customerModel) {
		return "고객명 : " + customerModel.getCustomer_name()
				+ " 주소 : " + customerModel.getCustomer_address() + " 전화번호 : "
				+ customerModel.getCustomer_phone() + " 요구사항 : "
				+ customerModel.getCustomer_request();
	}
}
