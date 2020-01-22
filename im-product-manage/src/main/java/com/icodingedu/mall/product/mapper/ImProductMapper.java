package com.icodingedu.mall.product.mapper;


import com.icodingedu.mall.api.bean.ImProduct;
import com.icodingedu.mall.api.service.MyMapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ImProductMapper extends MyMapper<ImProduct> {
    List<ImProduct> getProductsForDelete(int isDelete);
}