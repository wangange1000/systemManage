package com.manage.platform.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/main")
public class mainController {
	@RequestMapping
    public ModelAndView myMain() {
        ModelAndView mv = new ModelAndView("mian");
        return mv;
    }
	
	@RequestMapping(value = "welcome", method = RequestMethod.GET)
	public ModelAndView myWelcome() {
        ModelAndView mv = new ModelAndView("welcome");
        return mv;
    }
	
	@RequestMapping(value = "welcome1", method = RequestMethod.GET)
	public ModelAndView myWelcome1() {
        ModelAndView mv = new ModelAndView("welcome1");
        return mv;
    }
}
