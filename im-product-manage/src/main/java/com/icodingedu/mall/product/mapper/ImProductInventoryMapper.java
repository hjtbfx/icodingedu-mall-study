package com.icodingedu.mall.product.mapper;

import com.icodingedu.mall.api.bean.ImProductInventory;
import com.icodingedu.mall.api.service.MyMapper;
import org.springframework.stereotype.Repository;

@Repository
public interface ImProductInventoryMapper extends MyMapper<ImProductInventory> {
    ImProductInventory getProductInventoryForId(String productId,String variantId);
    int updateInventory(String productId,String variantId,int inventory);
}