package com.travel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Bright Huang on 10/7/14.
 */
@Controller
@RequestMapping("/buslines")
public class BusLinesController {
    private static final String BUS_LINES_PAGE = "buslines";

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView show(HttpServletRequest request, HttpServletResponse response) {

        Map<String, Object> models = new HashMap<String, Object>();
        models.put("buslines", new Object());

        return new ModelAndView(BUS_LINES_PAGE, models);
    }
}
