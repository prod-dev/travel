package com.travel.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.travel.model.Ticket;
import com.travel.service.ITicketService;

@Controller
public class IndexController {

	@Autowired
	ITicketService ticketService;

	@RequestMapping(value = "index", method = RequestMethod.GET)
	public ModelAndView index(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("================");
		Map<String, Object> models = new HashMap<String, Object>();
		List<Ticket> tickets = ticketService.getTickets();
		models.put("tickets", tickets);

		return new ModelAndView("index", models);
	}
}
