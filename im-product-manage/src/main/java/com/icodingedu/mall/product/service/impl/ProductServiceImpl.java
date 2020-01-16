package com.icodingedu.mall.product.service.impl;

import com.github.pagehelper.PageHelper;
import com.icodingedu.mall.api.bean.ImProduct;
import com.icodingedu.mall.api.service.ProductService;
import com.icodingedu.mall.product.mapper.ImProductMapper;
import org.apache.dubbo.config.annotation.Service;
import org.apache.dubbo.rpc.RpcContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Service(version = "2.0.0")
@Component
public class ProductServiceImpl implements ProductService {

    @Autowired
    ImProductMapper imProductMapper;

    @Override
    public List<ImProduct> queryProductList(int pageNum,int pageSize) {
        System.out.println("***********manage 2.0.0***********");
//        try {
//            Thread.sleep(3000);
//        } catch (InterruptedException e) {
//            e.printStackTrace();
//        }
        String appid = RpcContext.getContext().getAttachment("id");
        System.out.println("================"+appid+"===============");

        PageHelper.startPage(pageNum,pageSize);
        List<ImProduct> imProductList = imProductMapper.selectAll();
        return imProductList;
    }
}
