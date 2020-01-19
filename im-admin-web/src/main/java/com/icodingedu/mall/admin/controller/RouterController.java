package com.icodingedu.mall.admin.controller;

import com.icodingedu.mall.api.service.ProductService;
import com.icodingedu.mall.common.R;
import org.apache.dubbo.config.annotation.Reference;
import org.apache.dubbo.rpc.RpcContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class RouterController {

    @Autowired
    ProductService productService;

    @GetMapping("products")
    @ResponseBody
    public R getProductList(){
        return R.returnOK(200,"ok",productService.queryProductList(1,1));
    }
}
