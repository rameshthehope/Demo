package com.demo;
import static org.junit.Assert.assertEquals;

import org.junit.Test;

public class SampleControllerTest {

    SampleController calculator = new SampleController();

    @Test
    public void testMathOperationAdd(){
        assertEquals(60,calculator.mathOperations("20","40","add"),0);
    }

    @Test
    public void testMathOperationSub(){
        assertEquals(30,calculator.mathOperations("40","10","sub"),0);
    }

    @Test
    public void testMathOperationMultiply(){
        assertEquals(250,calculator.mathOperations("25","10","multiply"),0);
    }

    @Test
    public void testMathOperationDiv(){
        assertEquals(8,calculator.mathOperations("64","8","div"),0);
    }
}
