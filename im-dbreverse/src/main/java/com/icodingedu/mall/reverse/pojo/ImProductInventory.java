package com.icodingedu.mall.reverse.pojo;

import javax.persistence.*;

@Table(name = "im_product_inventory")
public class ImProductInventory {
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
     * 产品id
     */
    @Column(name = "product_id")
    private String productId;

    /**
     * 库存数量
     */
    private Integer inventory;

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
     * 获取库存数量
     *
     * @return inventory - 库存数量
     */
    public Integer getInventory() {
        return inventory;
    }

    /**
     * 设置库存数量
     *
     * @param inventory 库存数量
     */
    public void setInventory(Integer inventory) {
        this.inventory = inventory;
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