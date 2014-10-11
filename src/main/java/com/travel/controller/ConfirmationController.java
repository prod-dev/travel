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
import com.travel.service.ILineService;

@Controller
public class ConfirmationController {

	@Autowired
	ILineService lineService;

	private static final Logger LOG = Logger.getLogger(ConfirmationController.class);

	@RequestMapping(value = "confirmation", method = RequestMethod.GET)
	public ModelAndView confirmation(SearchCondition condition, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> models = new HashMap<String, Object>();
		List<LineInfo> lines = lineService.getLines(condition);
		models.put("line", lines.get(0));
		models.put("condition", condition);
		return new ModelAndView("confirmation", models);
	}
}
