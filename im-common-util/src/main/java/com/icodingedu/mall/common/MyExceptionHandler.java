package com.icodingedu.mall.common;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

@ControllerAdvice
public class MyExceptionHandler {

    //Exception异常处理，也可以细化到具体的异常
    @ResponseBody
    @ExceptionHandler(Exception.class)
    //这里将统一返回结合在一起用
    public R handleException(Exception e){
        //这里的code可以根据业务需要自行编写
        return R.returnFAIL(500,e.getMessage());
    }
}
