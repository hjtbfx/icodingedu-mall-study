package com.icodingedu.mall.common;

import java.io.Serializable;

public class R implements Serializable {
    private static final long serialVersionUID = 7874608936453437793L;
    private static final int SUCCESS_CODE = 200;
    private static final String SUCCESS_MSG = "SUCCESS";

    private int code = SUCCESS_CODE;
    private String msg = SUCCESS_MSG;
    private Object data = null;

    public R() {
    }

    public static R returnOK(){
        return new R();
    }

    public static R returnOK(int code, String msg){
        R response = new R();
        response.setCode(code);
        response.setMsg(msg);
        return  response;
    }

    public static R returnOK(int code, String msg, Object data){
        R response = new R();
        response.setCode(code);
        response.setMsg(msg);
        response.setData(data);
        return  response;
    }

    public static R returnFAIL(int code, String msg){
        R response = new R();
        response.setCode(code);
        response.setMsg(msg);
        return  response;
    }

    public static R returnFAIL(int code, String msg, Object data){
        R response = new R();
        response.setCode(code);
        response.setMsg(msg);
        response.setData(data);
        return  response;
    }

    public int getCode() {
        return this.code;
    }

    public String getMsg() {
        return this.msg;
    }

    public Object getData() {
        return this.data;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public void setData(Object data) {
        this.data = data;
    }

}
