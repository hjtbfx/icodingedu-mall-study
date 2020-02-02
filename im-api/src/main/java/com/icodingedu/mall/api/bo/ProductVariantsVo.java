package com.icodingedu.mall.api.bo;

import lombok.Data;

import java.io.Serializable;

@Data
public class ProductVariantsVo implements Serializable {
    private static final long serialVersionUID = 9192464123048355413L;
    private String option_name;
    private String option_value;
}
