package com.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CalculatorUIController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
    public String renderui() {
        return "index";
    }
}
