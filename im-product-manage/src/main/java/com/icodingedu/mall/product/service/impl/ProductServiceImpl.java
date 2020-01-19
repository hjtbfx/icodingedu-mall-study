package com.icodingedu.mall.product.service.impl;

import com.github.pagehelper.PageHelper;
import com.icodingedu.mall.api.bean.ImProduct;
import com.icodingedu.mall.api.bean.ImProductInventory;
import com.icodingedu.mall.api.service.ProductService;
import com.icodingedu.mall.product.mapper.ImProductInventoryMapper;
import com.icodingedu.mall.product.mapper.ImProductMapper;
import org.apache.dubbo.rpc.RpcContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    ImProductMapper imProductMapper;

    @Autowired
    ImProductInventoryMapper imProductInventoryMapper;

    @Override
    public List<ImProduct> queryProductList(int pageNum,int pageSize) {
        System.out.println("***********manage 2.0.0***********");
        PageHelper.startPage(pageNum,pageSize);
        List<ImProduct> imProductList = imProductMapper.selectAll();
        return imProductList;
    }

    @Override
    public int productUseInventory(String productId, String variantId, int inventory) {
        System.out.println("=========开始执行========");
        synchronized (this) {
            ImProductInventory imProductInventory = imProductInventoryMapper.getProductInventoryForId(productId, variantId);
            try {
                Thread.sleep(200);
            } catch (Exception e) {
                e.printStackTrace();
            }
            int flag = 1;
            if (imProductInventory.getInventory() >= inventory) {
                imProductInventoryMapper.updateInventory(productId, variantId, inventory);
                System.out.println("++++++++++扣减完成=========");
                flag = 1;
            } else {
                System.out.println("");
                System.out.println("-----------扣减失败=========");
            }
            return flag;
        }
    }


}
