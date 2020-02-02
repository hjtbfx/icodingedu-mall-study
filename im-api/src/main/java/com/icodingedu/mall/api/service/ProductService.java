package com.icodingedu.mall.api.service;

import com.github.pagehelper.PageInfo;
import com.icodingedu.mall.api.bean.ImProduct;
import com.icodingedu.mall.api.bo.ProductDTO;
import com.icodingedu.mall.api.bo.ProductVo;

import java.util.List;

public interface ProductService {
    List<ImProduct> queryProductList(int pageNum,int pageSize);
    int productUseInventory(String productId,String variantId,int inventory);
    String addProduct(ProductDTO productVo);
    PageInfo<ImProduct> getProductList(int pageNum, int pageSize);
    int deleteProduct(int id);
}
