package com.icodingedu.mall.api.bean;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import java.math.BigDecimal;

@Table(name = "im_product_variants")
public class ImProductVariants {
    /**
     * 自增id
     */
    @Id
    private Integer id;

    /**
     * 属性id
     */
    @Column(name = "variants_id")
    private String variantsId;

    /**
     * 属性名称,多个属性值用/隔开
     */
    @Column(name = "variants_title")
    private String variantsTitle;

    /**
     * 属性唯一编码
     */
    private String sku;

    /**
     * 原价
     */
    @Column(name = "original_price")
    private BigDecimal originalPrice;

    /**
     * 售价
     */
    @Column(name = "sale_price")
    private BigDecimal salePrice;

    /**
     * 重量单位g
     */
    @Column(name = "variants_weight")
    private Integer variantsWeight;

    /**
     * 属性名1
     */
    @Column(name = "option_name1")
    private String optionName1;

    /**
     * 属性名2
     */
    @Column(name = "option_name2")
    private String optionName2;

    /**
     * 属性名3
     */
    @Column(name = "option_name3")
    private String optionName3;

    /**
     * 属性值1
     */
    @Column(name = "option_value1")
    private String optionValue1;

    /**
     * 属性值2
     */
    @Column(name = "option_value2")
    private String optionValue2;

    /**
     * 属性值3
     */
    @Column(name = "option_value3")
    private String optionValue3;

    /**
     * 产品id
     */
    @Column(name = "product_id")
    private String productId;

    /**
     * 属性图片src路径
     */
    @Column(name = "image_src")
    private String imageSrc;

    /**
     * 逻辑删除标识0-未删,1-删除
     */
    @Column(name = "is_delete")
    private Integer isDelete;

    /**
     * 版本
     */
    private Integer version;

    /**
     * 创建员工
     */
    @Column(name = "create_emp")
    private String createEmp;

    /**
     * 更新员工
     */
    @Column(name = "update_emp")
    private String updateEmp;

    /**
     * 创建时间
     */
    @Column(name = "create_time")
    private Integer createTime;

    /**
     * 更新时间
     */
    @Column(name = "update_time")
    private Integer updateTime;

    /**
     * 获取自增id
     *
     * @return id - 自增id
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置自增id
     *
     * @param id 自增id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取属性id
     *
     * @return variants_id - 属性id
     */
    public String getVariantsId() {
        return variantsId;
    }

    /**
     * 设置属性id
     *
     * @param variantsId 属性id
     */
    public void setVariantsId(String variantsId) {
        this.variantsId = variantsId;
    }

    /**
     * 获取属性名称,多个属性值用/隔开
     *
     * @return variants_title - 属性名称,多个属性值用/隔开
     */
    public String getVariantsTitle() {
        return variantsTitle;
    }

    /**
     * 设置属性名称,多个属性值用/隔开
     *
     * @param variantsTitle 属性名称,多个属性值用/隔开
     */
    public void setVariantsTitle(String variantsTitle) {
        this.variantsTitle = variantsTitle;
    }

    /**
     * 获取属性唯一编码
     *
     * @return sku - 属性唯一编码
     */
    public String getSku() {
        return sku;
    }

    /**
     * 设置属性唯一编码
     *
     * @param sku 属性唯一编码
     */
    public void setSku(String sku) {
        this.sku = sku;
    }

    /**
     * 获取原价
     *
     * @return original_price - 原价
     */
    public BigDecimal getOriginalPrice() {
        return originalPrice;
    }

    /**
     * 设置原价
     *
     * @param originalPrice 原价
     */
    public void setOriginalPrice(BigDecimal originalPrice) {
        this.originalPrice = originalPrice;
    }

    /**
     * 获取售价
     *
     * @return sale_price - 售价
     */
    public BigDecimal getSalePrice() {
        return salePrice;
    }

    /**
     * 设置售价
     *
     * @param salePrice 售价
     */
    public void setSalePrice(BigDecimal salePrice) {
        this.salePrice = salePrice;
    }

    /**
     * 获取重量单位g
     *
     * @return variants_weight - 重量单位g
     */
    public Integer getVariantsWeight() {
        return variantsWeight;
    }

    /**
     * 设置重量单位g
     *
     * @param variantsWeight 重量单位g
     */
    public void setVariantsWeight(Integer variantsWeight) {
        this.variantsWeight = variantsWeight;
    }

    /**
     * 获取属性名1
     *
     * @return option_name1 - 属性名1
     */
    public String getOptionName1() {
        return optionName1;
    }

    /**
     * 设置属性名1
     *
     * @param optionName1 属性名1
     */
    public void setOptionName1(String optionName1) {
        this.optionName1 = optionName1;
    }

    /**
     * 获取属性名2
     *
     * @return option_name2 - 属性名2
     */
    public String getOptionName2() {
        return optionName2;
    }

    /**
     * 设置属性名2
     *
     * @param optionName2 属性名2
     */
    public void setOptionName2(String optionName2) {
        this.optionName2 = optionName2;
    }

    /**
     * 获取属性名3
     *
     * @return option_name3 - 属性名3
     */
    public String getOptionName3() {
        return optionName3;
    }

    /**
     * 设置属性名3
     *
     * @param optionName3 属性名3
     */
    public void setOptionName3(String optionName3) {
        this.optionName3 = optionName3;
    }

    /**
     * 获取属性值1
     *
     * @return option_value1 - 属性值1
     */
    public String getOptionValue1() {
        return optionValue1;
    }

    /**
     * 设置属性值1
     *
     * @param optionValue1 属性值1
     */
    public void setOptionValue1(String optionValue1) {
        this.optionValue1 = optionValue1;
    }

    /**
     * 获取属性值2
     *
     * @return option_value2 - 属性值2
     */
    public String getOptionValue2() {
        return optionValue2;
    }

    /**
     * 设置属性值2
     *
     * @param optionValue2 属性值2
     */
    public void setOptionValue2(String optionValue2) {
        this.optionValue2 = optionValue2;
    }

    /**
     * 获取属性值3
     *
     * @return option_value3 - 属性值3
     */
    public String getOptionValue3() {
        return optionValue3;
    }

    /**
     * 设置属性值3
     *
     * @param optionValue3 属性值3
     */
    public void setOptionValue3(String optionValue3) {
        this.optionValue3 = optionValue3;
    }

    /**
     * 获取产品id
     *
     * @return product_id - 产品id
     */
    public String getProductId() {
        return productId;
    }

    /**
     * 设置产品id
     *
     * @param productId 产品id
     */
    public void setProductId(String productId) {
        this.productId = productId;
    }

    /**
     * 获取属性图片src路径
     *
     * @return image_src - 属性图片src路径
     */
    public String getImageSrc() {
        return imageSrc;
    }

    /**
     * 设置属性图片src路径
     *
     * @param imageSrc 属性图片src路径
     */
    public void setImageSrc(String imageSrc) {
        this.imageSrc = imageSrc;
    }

    /**
     * 获取逻辑删除标识0-未删,1-删除
     *
     * @return is_delete - 逻辑删除标识0-未删,1-删除
     */
    public Integer getIsDelete() {
        return isDelete;
    }

    /**
     * 设置逻辑删除标识0-未删,1-删除
     *
     * @param isDelete 逻辑删除标识0-未删,1-删除
     */
    public void setIsDelete(Integer isDelete) {
        this.isDelete = isDelete;
    }

    /**
     * 获取版本
     *
     * @return version - 版本
     */
    public Integer getVersion() {
        return version;
    }

    /**
     * 设置版本
     *
     * @param version 版本
     */
    public void setVersion(Integer version) {
        this.version = version;
    }

    /**
     * 获取创建员工
     *
     * @return create_emp - 创建员工
     */
    public String getCreateEmp() {
        return createEmp;
    }

    /**
     * 设置创建员工
     *
     * @param createEmp 创建员工
     */
    public void setCreateEmp(String createEmp) {
        this.createEmp = createEmp;
    }

    /**
     * 获取更新员工
     *
     * @return update_emp - 更新员工
     */
    public String getUpdateEmp() {
        return updateEmp;
    }

    /**
     * 设置更新员工
     *
     * @param updateEmp 更新员工
     */
    public void setUpdateEmp(String updateEmp) {
        this.updateEmp = updateEmp;
    }

    /**
     * 获取创建时间
     *
     * @return create_time - 创建时间
     */
    public Integer getCreateTime() {
        return createTime;
    }

    /**
     * 设置创建时间
     *
     * @param createTime 创建时间
     */
    public void setCreateTime(Integer createTime) {
        this.createTime = createTime;
    }

    /**
     * 获取更新时间
     *
     * @return update_time - 更新时间
     */
    public Integer getUpdateTime() {
        return updateTime;
    }

    /**
     * 设置更新时间
     *
     * @param updateTime 更新时间
     */
    public void setUpdateTime(Integer updateTime) {
        this.updateTime = updateTime;
    }
}