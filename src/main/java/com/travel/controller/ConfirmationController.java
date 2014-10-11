package com.travel.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.travel.model.LineInfo;
import com.travel.model.SearchCondition;
import com.travel.model.Ticket;
import com.travel.service.ITicketService;

@Controller
public class ConfirmationController {

	@Autowired
	ITicketService ticketService;

	private static final Logger LOG = Logger.getLogger(ConfirmationController.class);

	@RequestMapping(value = "index", method = RequestMethod.GET)
	public ModelAndView index(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("================");
		Map<String, Object> models = new HashMap<String, Object>();
		List<Ticket> tickets = ticketService.getTickets();
		models.put("tickets", tickets);
		LOG.debug("This is a log test");
		return new ModelAndView("index", models);
	}

	@RequestMapping(value = "search", method = RequestMethod.POST)
	public ModelAndView search(SearchCondition condition, HttpServletRequest request, HttpServletResponse response) {
		System.out.println("================");
		System.out.println(condition.isSingle());
		System.out.println(condition.isReturn());
		System.out.println(condition.isConnect());
		System.out.println(condition.getFrom());
		System.out.println(condition.getTo());
		System.out.println(condition.getStartDate());
		System.out.println(condition.getEndDate());
		System.out.println("================");
		System.out.println(request.getParameter("from"));
		System.out.println("================");

		Map<String, Object> models = new HashMap<String, Object>();
		List<LineInfo> lines = ticketService.getLines();
		models.put("lines", lines);
		models.put("condition", condition);

		return new ModelAndView("list", models);
	}

	

	@RequestMapping(value = "confirmation", method = RequestMethod.GET)
	public ModelAndView confirmation(SearchCondition condition, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> models = new HashMap<String, Object>();
		List<LineInfo> lines = ticketService.getLines();
		models.put("line", lines.get(0));
		models.put("condition", condition);
		return new ModelAndView("confirmation", models);
	}
}
