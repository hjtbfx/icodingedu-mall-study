package com.icodingedu.mall.api.bo;

import lombok.Data;

import java.io.Serializable;

@Data
public class ProductDTO implements Serializable {
    private static final long serialVersionUID = -6725251771330852944L;
    private String product_id;
    private String product_title;
    private String url_handle;
    private ImageFileDTO first_image_src;
    private ImageFileDTO second_image_src;
    private ImageFileDTO [] detail_image_src;
    private String original_price;
    private String sale_price;
    private String status;
    private String short_description;
    private String detail_description;
    private String option_name1;
    private String option_name2;
    private String option_name3;
    private String option_value1;
    private String option_value2;
    private String option_value3;
    private String variants_weight;
}
