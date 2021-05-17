package com.doan.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "loginControllerofAdmin")
public class LogInController {

	@RequestMapping(value = "/quantri/dangnhap", method = RequestMethod.GET)
	   public ModelAndView homePage() {
	      ModelAndView mav = new ModelAndView("/admin/login");
	      return mav;
	}
	
}
