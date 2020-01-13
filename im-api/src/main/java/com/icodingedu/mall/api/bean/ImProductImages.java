package com.icodingedu.mall.api.bean;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "im_product_images")
public class ImProductImages {
    /**
     * 自增id
     */
    @Id
    private Integer id;

    /**
     * 图片id
     */
    @Column(name = "images_id")
    private String imagesId;

    /**
     * 产品id
     */
    @Column(name = "product_id")
    private String productId;

    /**
     * 图片展示顺序
     */
    private Integer position;

    /**
     * 产品主图src路径
     */
    private String src;

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
     * 获取图片id
     *
     * @return images_id - 图片id
     */
    public String getImagesId() {
        return imagesId;
    }

    /**
     * 设置图片id
     *
     * @param imagesId 图片id
     */
    public void setImagesId(String imagesId) {
        this.imagesId = imagesId;
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
     * 获取图片展示顺序
     *
     * @return position - 图片展示顺序
     */
    public Integer getPosition() {
        return position;
    }

    /**
     * 设置图片展示顺序
     *
     * @param position 图片展示顺序
     */
    public void setPosition(Integer position) {
        this.position = position;
    }

    /**
     * 获取产品主图src路径
     *
     * @return src - 产品主图src路径
     */
    public String getSrc() {
        return src;
    }

    /**
     * 设置产品主图src路径
     *
     * @param src 产品主图src路径
     */
    public void setSrc(String src) {
        this.src = src;
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