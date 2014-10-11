package com.travel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.travel.model.LineInfo;
import com.travel.model.SearchCondition;
import com.travel.service.ITicketService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class BusLinesController {
	
	@Autowired
	ITicketService ticketService;
	private static final String BUS_LINES_PAGE = "buslines";

	@RequestMapping(value = "buslines", method = RequestMethod.POST)
	public ModelAndView search(SearchCondition condition,HttpServletRequest request, HttpServletResponse response) {

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
		models.put("buslines", new Object());
		List<LineInfo> lines = ticketService.getLines();
		models.put("lines", lines);
		models.put("condition", condition);
		return new ModelAndView(BUS_LINES_PAGE, models);
	}
}
