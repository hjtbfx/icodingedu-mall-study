package com.icodingedu.mall.api.bo;

import lombok.Data;

import java.io.Serializable;

@Data
public class ImageFileDTO implements Serializable {
    private static final long serialVersionUID = 7009648145538184301L;
    private String name;
    private String originalFilename;
    private String contentType;
    private long size;
    private byte [] bytes;

    /**
     *         productVo.getFirst_image_src().getOriginalFilename();
     *         productVo.getFirst_image_src().getSize();//long
     *         productVo.getFirst_image_src().getName();
     *         productVo.getFirst_image_src().getBytes();
     *         productVo.getFirst_image_src().getContentType();
     */
}
