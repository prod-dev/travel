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
@RequestMapping("/payments")
public class PaymentsController {

    private static final String PAYMENTS_PAGE = "payments";

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView show(HttpServletRequest request, HttpServletResponse response) {

        Map<String, Object> models = new HashMap<String, Object>();
        models.put("payments", new Object());

        return new ModelAndView(PAYMENTS_PAGE, models);
    }
}
