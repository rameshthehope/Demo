package com.demo;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SampleController {

    @RequestMapping(value = "/calculator", method = RequestMethod.GET)
    public Double mathOperations(@RequestParam(value="operand1", required=false)  String operand1,
                           @RequestParam(value = "operand2", required = false) String operand2,
                           @RequestParam(value = "operator", required = false) String operator) {
        Double result = 0.0;
        if (operand1 != null && operand2 != null && operator != null) {
            switch (operator) {
                case "add":
                    double resultadd = Double.parseDouble(operand1) + Double.parseDouble(operand2);
                    result = resultadd;
                    break;
                case "sub":
                    double resultsub = Double.parseDouble(operand1) - Double.parseDouble(operand2);
                    result = resultsub;
                    break;
                case "multiply":
                    double resultmul = Double.parseDouble(operand1) * Double.parseDouble(operand2);
                    result = resultmul;
                    break;
                case "div":
                    double resultdiv = Double.parseDouble(operand1) / Double.parseDouble(operand2);
                    result = resultdiv;
                    break;
                default:
                    break;

            }
        }
        return result;
    }
}
