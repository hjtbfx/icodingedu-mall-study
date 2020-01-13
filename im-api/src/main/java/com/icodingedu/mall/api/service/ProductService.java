package com.icodingedu.mall.api.service;

import com.icodingedu.mall.api.bean.ImProduct;
import java.util.List;

public interface ProductService {
    List<ImProduct> queryProductList(int pageNum,int pageSize);
}
