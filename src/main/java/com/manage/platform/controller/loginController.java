package com.manage.platform.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/Logins")
public class loginController {

	@RequestMapping
    public ModelAndView myLogins() {
        ModelAndView mv = new ModelAndView("Logins");
        return mv;
    }
}
