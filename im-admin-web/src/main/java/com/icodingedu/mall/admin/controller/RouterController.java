package com.icodingedu.mall.admin.controller;

import com.icodingedu.mall.api.service.ProductService;
import com.icodingedu.mall.common.R;
import org.apache.dubbo.config.annotation.Reference;
import org.apache.dubbo.rpc.RpcContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class RouterController {

    @Reference(version = "2.0.0",mock = "com.icodingedu.mall.admin.service.impl.ProductServiceMock",stub = "com.icodingedu.mall.admin.service.impl.ProductServiceStub")
    ProductService productService;

    @GetMapping("products")
    @ResponseBody
    public R getProductList(){
        RpcContext.getContext().setAttachment("id","gavin-admin-web");
        return R.returnOK(200,"ok",productService.queryProductList(1,3));
    }
}
