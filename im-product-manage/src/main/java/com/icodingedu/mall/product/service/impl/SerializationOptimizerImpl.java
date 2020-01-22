package com.icodingedu.mall.product.service.impl;

import com.github.pagehelper.PageInfo;
import com.icodingedu.mall.api.bean.ImProduct;
import com.icodingedu.mall.api.bo.ProductVo;
import org.apache.dubbo.common.serialize.support.SerializationOptimizer;
import org.springframework.web.multipart.MultipartFile;

import java.util.Collection;
import java.util.LinkedList;
import java.util.List;

public class SerializationOptimizerImpl implements SerializationOptimizer {
    @Override
    public Collection<Class> getSerializableClasses() {
        List<Class> classes = new LinkedList<Class>();
        classes.add(ImProduct.class);
        classes.add(ProductVo.class);
        classes.add(MultipartFile.class);
        classes.add(PageInfo.class);
        return classes;
    }
}
