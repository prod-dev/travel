package com.travel.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.travel.model.LineInfo;
import com.travel.model.SearchCondition;
import com.travel.model.Station;
import com.travel.service.ILineService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class BusLinesController {

	@Autowired
	ILineService lineService;
	private static final String BUS_LINES_PAGE = "buslines";

	private static final Logger LOG = Logger.getLogger(BusLinesController.class);

	@RequestMapping(value = "buslines", method = RequestMethod.POST)
	public ModelAndView search(SearchCondition condition, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> models = new HashMap<String, Object>();
		models.put("buslines", new Object());
		System.out.println("=================");
		System.out.println(request.getParameter("from"));
		System.out.println(condition.getFrom());
		
		LOG.info("User search:" + condition.toString());
		List<LineInfo> lines = lineService.getLines(condition);
		List<Station> stations = lineService.getDepartStations(condition.getFrom());
		models.put("lines", lines);
		models.put("stations", stations);
		models.put("condition", condition);
		return new ModelAndView(BUS_LINES_PAGE, models);
	}
}
