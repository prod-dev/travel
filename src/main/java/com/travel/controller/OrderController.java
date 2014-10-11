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
public class OrderController {

	private static final String ORDER_PAGE = "order";

	@RequestMapping(value = "/order", method = RequestMethod.GET)
	public ModelAndView show(HttpServletRequest request, HttpServletResponse response) {

		Map<String, Object> models = new HashMap<String, Object>();
		models.put("order", new Object());

		return new ModelAndView(ORDER_PAGE, models);
	}
}
