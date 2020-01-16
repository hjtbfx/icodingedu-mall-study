package com.icodingedu.mall.admin.service.impl;

import com.icodingedu.mall.api.bean.ImProduct;
import com.icodingedu.mall.api.service.ProductService;

import java.util.List;

public class ProductServiceStub implements ProductService {

    //远端调用的服务
    private final ProductService productService;
    //dubbo会通过这个有参的构造函数注入远程调用
    public ProductServiceStub(ProductService productService){
        this.productService = productService;
    }

    @Override
    public List<ImProduct> queryProductList(int pageNum, int pageSize) {
        System.out.println("==============stub service=============");
        return productService.queryProductList(pageNum,pageSize);
    }
}
