package com.icodingedu.mall.api.bo;

import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

import java.io.Serializable;

@Data
public class ProductVo implements Serializable{
    private static final long serialVersionUID = -7162203100370993101L;
    private String product_id;
    private String product_title;
    private String url_handle;
    private MultipartFile first_image_src;
    private MultipartFile second_image_src;
    private MultipartFile [] detail_image_src;
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
