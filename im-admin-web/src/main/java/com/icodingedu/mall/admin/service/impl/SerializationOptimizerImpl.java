package com.icodingedu.mall.admin.service.impl;

import com.github.pagehelper.PageInfo;
import com.icodingedu.mall.api.bean.ImProduct;
import com.icodingedu.mall.api.bean.ImProductImages;
import com.icodingedu.mall.api.bean.ImProductInventory;
import com.icodingedu.mall.api.bean.ImProductVariants;
import com.icodingedu.mall.api.bo.ImageFileDTO;
import com.icodingedu.mall.api.bo.ProductDTO;
import com.icodingedu.mall.api.bo.ProductVariantsVo;
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
        classes.add(ImProductImages.class);
        classes.add(ImProductInventory.class);
        classes.add(ImProductVariants.class);
        classes.add(ImageFileDTO.class);
        classes.add(ProductDTO.class);
        classes.add(ProductVariantsVo.class);
        classes.add(ProductVo.class);
        return classes;
    }
}
