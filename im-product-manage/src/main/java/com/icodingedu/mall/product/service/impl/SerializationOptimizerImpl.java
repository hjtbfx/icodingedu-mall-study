package com.icodingedu.mall.product.service.impl;

import com.icodingedu.mall.api.bean.ImProduct;
import org.apache.dubbo.common.serialize.support.SerializationOptimizer;

import java.util.Collection;
import java.util.LinkedList;
import java.util.List;

public class SerializationOptimizerImpl implements SerializationOptimizer {
    @Override
    public Collection<Class> getSerializableClasses() {
        List<Class> classes = new LinkedList<Class>();
        classes.add(ImProduct.class);
        return classes;
    }
}
