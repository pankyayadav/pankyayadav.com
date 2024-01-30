package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AboutController {
	
	@RequestMapping(value="/about",method = RequestMethod.GET)
	public ModelAndView about() {
		ModelAndView mv = new ModelAndView("about");
		return mv;
	}
	
	@RequestMapping(value="/commissioning",method = RequestMethod.GET)
	public ModelAndView commissioning() {
		ModelAndView mv = new ModelAndView("commissioning");
		return mv;
	}
	
	@RequestMapping(value="/conducting",method = RequestMethod.GET)
	public ModelAndView conducting() {
		ModelAndView mv = new ModelAndView("conducting");
		return mv;
	}
	
	@RequestMapping(value="/team",method = RequestMethod.GET)
	public String team() {
		return "team";
	}
	
	@RequestMapping(value="/client",method = RequestMethod.GET)
	public String client() {
		return "client";
	}
	
	@RequestMapping(value="/cablesDetails",method = RequestMethod.GET)
	public String cablesDetails() {
		return "cablesDetails";
	}
	
	@RequestMapping(value="/maintenance",method = RequestMethod.GET)
	public String maintenance() {
		return "maintenance";
	}
	
	@RequestMapping(value="/panelWork",method = RequestMethod.GET)
	public String panelWork() {
		return "panelWork";
	}
}
