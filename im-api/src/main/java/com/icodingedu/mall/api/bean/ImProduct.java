package com.icodingedu.mall.api.bean;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.math.BigDecimal;

@Table(name = "im_product")
public class ImProduct implements Serializable {
    private static final long serialVersionUID = -4298312059463116715L;
    /**
     * 自增id
     */
    @Id
    private Integer id;

    /**
     * 产品id
     */
    @Column(name = "product_id")
    private String productId;

    /**
     * 产品标题
     */
    @Column(name = "product_title")
    private String productTitle;

    /**
     * 产品访问路径
     */
    @Column(name = "url_handle")
    private String urlHandle;

    /**
     * 产品主图src路径
     */
    @Column(name = "first_image_src")
    private String firstImageSrc;

    /**
     * 产品次图src路径
     */
    @Column(name = "second_image_src")
    private String secondImageSrc;

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
     * 产品唯一编码
     */
    private String spu;

    /**
     * 产品状态:0-下架,1-上架
     */
    private Integer status;

    /**
     * 产品简短描述
     */
    @Column(name = "short_description")
    private String shortDescription;

    /**
     * 产品详细描述
     */
    @Column(name = "detail_description")
    private String detailDescription;

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
     * 获取产品标题
     *
     * @return product_title - 产品标题
     */
    public String getProductTitle() {
        return productTitle;
    }

    /**
     * 设置产品标题
     *
     * @param productTitle 产品标题
     */
    public void setProductTitle(String productTitle) {
        this.productTitle = productTitle;
    }

    /**
     * 获取产品访问路径
     *
     * @return url_handle - 产品访问路径
     */
    public String getUrlHandle() {
        return urlHandle;
    }

    /**
     * 设置产品访问路径
     *
     * @param urlHandle 产品访问路径
     */
    public void setUrlHandle(String urlHandle) {
        this.urlHandle = urlHandle;
    }

    /**
     * 获取产品主图src路径
     *
     * @return first_image_src - 产品主图src路径
     */
    public String getFirstImageSrc() {
        return firstImageSrc;
    }

    /**
     * 设置产品主图src路径
     *
     * @param firstImageSrc 产品主图src路径
     */
    public void setFirstImageSrc(String firstImageSrc) {
        this.firstImageSrc = firstImageSrc;
    }

    /**
     * 获取产品次图src路径
     *
     * @return second_image_src - 产品次图src路径
     */
    public String getSecondImageSrc() {
        return secondImageSrc;
    }

    /**
     * 设置产品次图src路径
     *
     * @param secondImageSrc 产品次图src路径
     */
    public void setSecondImageSrc(String secondImageSrc) {
        this.secondImageSrc = secondImageSrc;
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
     * 获取产品唯一编码
     *
     * @return spu - 产品唯一编码
     */
    public String getSpu() {
        return spu;
    }

    /**
     * 设置产品唯一编码
     *
     * @param spu 产品唯一编码
     */
    public void setSpu(String spu) {
        this.spu = spu;
    }

    /**
     * 获取产品状态:0-下架,1-上架
     *
     * @return status - 产品状态:0-下架,1-上架
     */
    public Integer getStatus() {
        return status;
    }

    /**
     * 设置产品状态:0-下架,1-上架
     *
     * @param status 产品状态:0-下架,1-上架
     */
    public void setStatus(Integer status) {
        this.status = status;
    }

    /**
     * 获取产品简短描述
     *
     * @return short_description - 产品简短描述
     */
    public String getShortDescription() {
        return shortDescription;
    }

    /**
     * 设置产品简短描述
     *
     * @param shortDescription 产品简短描述
     */
    public void setShortDescription(String shortDescription) {
        this.shortDescription = shortDescription;
    }

    /**
     * 获取产品详细描述
     *
     * @return detail_description - 产品详细描述
     */
    public String getDetailDescription() {
        return detailDescription;
    }

    /**
     * 设置产品详细描述
     *
     * @param detailDescription 产品详细描述
     */
    public void setDetailDescription(String detailDescription) {
        this.detailDescription = detailDescription;
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