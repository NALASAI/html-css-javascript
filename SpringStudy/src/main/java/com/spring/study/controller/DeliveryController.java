package com.spring.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.study.model.CustomerModel;

@Controller
public class DeliveryController {

	@RequestMapping(value = "/delivery", method = RequestMethod.GET)
	public ModelAndView userInfoInsert() {
		ModelAndView mav = new ModelAndView("delivery");
		return mav;
	}
	
	@RequestMapping(value="/delivery-request", method = RequestMethod.POST)
	public ModelAndView deliveryInsert(CustomerModel customerModel) {
		
		ModelAndView mav2 = new ModelAndView("deliveryInfo");
		mav2.addObject("customerModel", customerModel);
		System.out.println(customerModel.getCustomer_name());
		System.out.println(customerModel.getCustomer_address());
		System.out.println(customerModel.getCustomer_phone());
		System.out.println(customerModel.getCustomer_request());
		
		return mav2;
	}
	
	@RequestMapping(value="/delivery-request2", method = RequestMethod.POST)
	public String deliveryInsert(Model model, CustomerModel customerModel) {
			model.addAttribute("customerModel", customerModel);
			return "deliveryInfo";
	}
}
