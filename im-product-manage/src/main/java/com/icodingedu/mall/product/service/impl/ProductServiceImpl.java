package com.icodingedu.mall.product.service.impl;

import com.github.pagehelper.PageHelper;
import com.icodingedu.mall.api.bean.ImProduct;
import com.icodingedu.mall.api.service.ProductService;
import com.icodingedu.mall.product.mapper.ImProductMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    ImProductMapper imProductMapper;

    @Override
    public List<ImProduct> queryProductList(int pageNum,int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<ImProduct> imProductList = imProductMapper.selectAll();
        return imProductList;
    }
}
