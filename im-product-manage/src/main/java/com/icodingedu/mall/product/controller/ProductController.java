package com.icodingedu.mall.product.controller;

import com.github.pagehelper.PageInfo;
import com.icodingedu.mall.api.bean.ImProduct;
import com.icodingedu.mall.api.service.ProductService;
import com.icodingedu.mall.common.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class ProductController {

    @Autowired
    ProductService productService;

    @GetMapping("/productlist")
    @ResponseBody
    public R queryAllProduct(){
        List<ImProduct> imProductList = productService.queryProductList(1,3);
        PageInfo<ImProduct> productPageInfo = new PageInfo<ImProduct>(imProductList);
        return R.returnOK(200,"成功",productPageInfo);
    }

    @GetMapping("/inventory")
    @ResponseBody
    public R updateInventory(){
        return R.returnOK(200,"ok",productService.productUseInventory("p1578374842vo28","v1578374842q1G11",6));
    }
}
