package com.icodingedu.mall.admin.service.impl;

import com.icodingedu.mall.api.bean.ImProduct;
import com.icodingedu.mall.api.service.ProductService;

import java.util.ArrayList;
import java.util.List;

public class ProductServiceMock implements ProductService {
    @Override
    public List<ImProduct> queryProductList(int pageNum, int pageSize) {
        List<ImProduct> imProductList = new ArrayList<ImProduct>();
        ImProduct imProduct = new ImProduct();
        imProduct.setProductTitle("Mock Product");
        imProductList.add(imProduct);
        return imProductList;
    }
}
