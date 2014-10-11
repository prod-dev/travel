package com.travel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.HashMap;
import java.util.Map;

@Controller
public class HomeController {

	private static final String HOME_PAGE = "home";

	@RequestMapping(value = "home", method = RequestMethod.GET)
	public ModelAndView home(HttpServletRequest request, HttpServletResponse response) {

		Map<String, Object> models = new HashMap<String, Object>();
		models.put("home", new Object());
		return new ModelAndView(HOME_PAGE, models);
	}
}
