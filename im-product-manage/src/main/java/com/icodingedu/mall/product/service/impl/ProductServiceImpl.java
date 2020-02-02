package com.icodingedu.mall.product.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.github.tobato.fastdfs.domain.fdfs.StorePath;
import com.github.tobato.fastdfs.service.FastFileStorageClient;
import com.icodingedu.mall.api.bean.*;
import com.icodingedu.mall.api.bo.ImageFileDTO;
import com.icodingedu.mall.api.bo.ProductDTO;
import com.icodingedu.mall.api.bo.ProductVariantsVo;
import com.icodingedu.mall.api.service.ProductService;
import com.icodingedu.mall.product.mapper.ImProductImagesMapper;
import com.icodingedu.mall.product.mapper.ImProductInventoryMapper;
import com.icodingedu.mall.product.mapper.ImProductMapper;
import com.icodingedu.mall.product.mapper.ImProductVariantsMapper;
import io.netty.util.internal.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.ByteArrayInputStream;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.UUID;

@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    ImProductMapper imProductMapper;

    @Autowired
    ImProductImagesMapper imProductImagesMapper;

    @Autowired
    ImProductVariantsMapper imProductVariantsMapper;

    @Autowired
    ImProductInventoryMapper imProductInventoryMapper;

    @Autowired
    FastFileStorageClient storageClient;

    @Override
    public List<ImProduct> queryProductList(int pageNum,int pageSize) {
        System.out.println("***********manage 2.0.0***********");
        PageHelper.startPage(pageNum,pageSize);
        List<ImProduct> imProductList = imProductMapper.selectAll();
        return imProductList;
    }

    @Override
    public int productUseInventory(String productId, String variantId, int inventory) {
        ZookeeperDistributeLock zookeeperDistributeLock = new ZookeeperDistributeLock("/"+productId+"_"+variantId);
        zookeeperDistributeLock.lock();
        System.out.println("=========开始执行========");
        ImProductInventory imProductInventory = imProductInventoryMapper.getProductInventoryForId(productId, variantId);
        try {
            Thread.sleep(200);
        } catch (Exception e) {
            e.printStackTrace();
        }
        int flag = 1;
        if (imProductInventory.getInventory() >= inventory) {
            imProductInventoryMapper.updateInventory(productId, variantId, inventory);
            System.out.println("++++++++++扣减完成=========");
            flag = 1;
        } else {
            System.out.println("");
            System.out.println("-----------扣减失败=========");
        }
        zookeeperDistributeLock.unlock();
        return flag;
    }


    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public String addProduct(ProductDTO productVo){
        String product_id = this.getProductId();
        String spu = this.getSPU();
        Integer timestamp = this.getTimeStamp();
        //保存产品信息
        ImProduct imProduct = new ImProduct();
        imProduct.setProductId(product_id);
        imProduct.setProductTitle(productVo.getProduct_title());
        imProduct.setUrlHandle(productVo.getUrl_handle());
//        try {
//            StorePath storePath_first_src = storageClient.uploadFile(new ByteArrayInputStream(productVo.getFirst_image_src().getBytes()),productVo.getFirst_image_src().getSize(),"jpg",null);
//            imProduct.setFirstImageSrc(storePath_first_src.getFullPath());
//            StorePath storePath_second_src = storageClient.uploadFile(new ByteArrayInputStream(productVo.getSecond_image_src().getBytes()),productVo.getSecond_image_src().getSize(),"jpg",null);
//            imProduct.setSecondImageSrc(storePath_second_src.getFullPath());
//        }catch (Exception e){
//            e.printStackTrace();
//        }
        System.out.println("***************productVo.getFirst_image_src().getBytes().length:"+productVo.getFirst_image_src().getBytes().length);
        System.out.println("***************productVo.getSecond_image_src().getBytes().length:"+productVo.getSecond_image_src().getBytes().length);
        imProduct.setFirstImageSrc(productVo.getFirst_image_src().getOriginalFilename());
        imProduct.setSecondImageSrc(productVo.getSecond_image_src().getOriginalFilename());

        imProduct.setOriginalPrice(BigDecimal.valueOf(Double.parseDouble(productVo.getOriginal_price())));
        imProduct.setSalePrice(BigDecimal.valueOf(Double.parseDouble(productVo.getSale_price())));
        imProduct.setShortDescription(productVo.getShort_description());
        imProduct.setDetailDescription(productVo.getDetail_description());
        imProduct.setSpu(spu);
        imProduct.setStatus(Integer.parseInt(productVo.getStatus()));
        imProduct.setIsDelete(0);
        imProduct.setVersion(1);
        imProduct.setCreateEmp("gavin");
        imProduct.setUpdateEmp("gavin");
        imProduct.setCreateTime(timestamp);
        imProduct.setUpdateTime(timestamp);
        //保存图片信息
        List<ImProductImages> imProductImagesList = new ArrayList<ImProductImages>();
        String imggeIdPre = this.getImageIdPre();
        ImageFileDTO [] mfs = productVo.getDetail_image_src();
        for(int i=0;i<mfs.length;i++) {
            ImProductImages imProductImages = new ImProductImages();
            imProductImages.setImagesId(imggeIdPre+(i+1));
            imProductImages.setProductId(product_id);
            imProductImages.setPosition(i+1);
            imProductImages.setSrc(mfs[i].getOriginalFilename());
            imProductImages.setIsDelete(0);
            imProductImages.setVersion(1);
            imProductImages.setCreateEmp("gavin");
            imProductImages.setUpdateEmp("gavin");
            imProductImages.setCreateTime(timestamp);
            imProductImages.setUpdateTime(timestamp);
            imProductImagesList.add(imProductImages);
        }
        //保存属性信息
        List<ImProductVariants> imProductVariantsList = new ArrayList<ImProductVariants>();
        List<ProductVariantsVo> productVariantsVoList = new ArrayList<ProductVariantsVo>();
        String variantIdPre = this.getVariantsIdPre();
        String skuPre = this.getSKUPre();
        ProductVariantsVo productVariantsVo1 = new ProductVariantsVo();
        productVariantsVo1.setOption_name(productVo.getOption_name1());
        productVariantsVo1.setOption_value(productVo.getOption_value1());
        productVariantsVoList.add(productVariantsVo1);
        if(!StringUtil.isNullOrEmpty(productVo.getOption_name2())&&!StringUtil.isNullOrEmpty(productVo.getOption_value2())){
            ProductVariantsVo productVariantsVo2 = new ProductVariantsVo();
            productVariantsVo2.setOption_name(productVo.getOption_name2());
            productVariantsVo2.setOption_value(productVo.getOption_value2());
            productVariantsVoList.add(productVariantsVo2);
        }
        if(!StringUtil.isNullOrEmpty(productVo.getOption_name3())&&!StringUtil.isNullOrEmpty(productVo.getOption_value3())){
            ProductVariantsVo productVariantsVo3 = new ProductVariantsVo();
            productVariantsVo3.setOption_name(productVo.getOption_name3());
            productVariantsVo3.setOption_value(productVo.getOption_value3());
            productVariantsVoList.add(productVariantsVo3);
        }
        if(productVariantsVoList.size()==1){
            String option_name1 = productVariantsVoList.get(0).getOption_name();
            String option_value1 = productVariantsVoList.get(0).getOption_value();
            String [] varintValues = option_value1.split(",");
            for(int i=0;i<varintValues.length;i++){
                ImProductVariants imProductVariants = new ImProductVariants();
                imProductVariants.setVariantsId(variantIdPre+(i+1));
                imProductVariants.setVariantsTitle(varintValues[i]);
                imProductVariants.setSku(skuPre+(i+1));
                imProductVariants.setOriginalPrice(BigDecimal.valueOf(Double.parseDouble(productVo.getOriginal_price())));
                imProductVariants.setSalePrice(BigDecimal.valueOf(Double.parseDouble(productVo.getSale_price())));
                imProductVariants.setVariantsWeight(Integer.parseInt(productVo.getVariants_weight()));
                imProductVariants.setOptionName1(option_name1);
                imProductVariants.setOptionValue1(varintValues[i]);
                imProductVariants.setProductId(product_id);
                imProductVariants.setImageSrc(productVo.getFirst_image_src().getOriginalFilename());
                imProductVariants.setIsDelete(0);
                imProductVariants.setVersion(1);
                imProductVariants.setCreateEmp("gavin");
                imProductVariants.setUpdateEmp("gavin");
                imProductVariants.setCreateTime(timestamp);
                imProductVariants.setUpdateTime(timestamp);
                //将属性信息放入记录集合
                imProductVariantsList.add(imProductVariants);
            }
        }else if(productVariantsVoList.size()==2){
            String option_name1 = productVariantsVoList.get(0).getOption_name();
            String option_value1 = productVariantsVoList.get(0).getOption_value();
            String option_name2 = productVariantsVoList.get(1).getOption_name();
            String option_value2 = productVariantsVoList.get(1).getOption_value();
            String [] varintValues1 = option_value1.split(",");
            String [] varintValues2 = option_value2.split(",");
            for(int i=0;i<varintValues1.length;i++){
                for(int j=0;j<varintValues2.length;j++){
                    ImProductVariants imProductVariants = new ImProductVariants();
                    imProductVariants.setVariantsId(variantIdPre+((j+1)+(i*varintValues2.length)));
                    imProductVariants.setVariantsTitle(varintValues1[i]+" / "+varintValues2[j]);
                    imProductVariants.setSku(skuPre+((j+1)+(i*varintValues2.length)));
                    imProductVariants.setOriginalPrice(BigDecimal.valueOf(Double.parseDouble(productVo.getOriginal_price())));
                    imProductVariants.setSalePrice(BigDecimal.valueOf(Double.parseDouble(productVo.getSale_price())));
                    imProductVariants.setVariantsWeight(Integer.parseInt(productVo.getVariants_weight()));
                    imProductVariants.setOptionName1(option_name1);
                    imProductVariants.setOptionValue1(varintValues1[i]);
                    imProductVariants.setOptionName2(option_name2);
                    imProductVariants.setOptionValue2(varintValues2[j]);
                    imProductVariants.setProductId(product_id);
                    imProductVariants.setImageSrc(productVo.getFirst_image_src().getOriginalFilename());
                    imProductVariants.setIsDelete(0);
                    imProductVariants.setVersion(1);
                    imProductVariants.setCreateEmp("gavin");
                    imProductVariants.setUpdateEmp("gavin");
                    imProductVariants.setCreateTime(timestamp);
                    imProductVariants.setUpdateTime(timestamp);
                    //将属性信息放入记录集合
                    imProductVariantsList.add(imProductVariants);
                }
            }
        }else if(productVariantsVoList.size()==3){
            String option_name1 = productVariantsVoList.get(0).getOption_name();
            String option_value1 = productVariantsVoList.get(0).getOption_value();
            String option_name2 = productVariantsVoList.get(1).getOption_name();
            String option_value2 = productVariantsVoList.get(1).getOption_value();
            String option_name3 = productVariantsVoList.get(2).getOption_name();
            String option_value3 = productVariantsVoList.get(2).getOption_value();
            String [] varintValues1 = option_value1.split(",");
            String [] varintValues2 = option_value2.split(",");
            String [] varintValues3 = option_value3.split(",");
            int flag = 1;
            for(int i=0;i<varintValues1.length;i++){
                for(int j=0;j<varintValues2.length;j++){
                    for(int k=0;k<varintValues3.length;k++){
                        ImProductVariants imProductVariants = new ImProductVariants();
                        imProductVariants.setVariantsId(variantIdPre+flag);
                        imProductVariants.setVariantsTitle(varintValues1[i]+" / "+varintValues2[j]+" / "+varintValues3[k]);
                        imProductVariants.setSku(skuPre+flag);
                        imProductVariants.setOriginalPrice(BigDecimal.valueOf(Double.parseDouble(productVo.getOriginal_price())));
                        imProductVariants.setSalePrice(BigDecimal.valueOf(Double.parseDouble(productVo.getSale_price())));
                        imProductVariants.setVariantsWeight(Integer.parseInt(productVo.getVariants_weight()));
                        imProductVariants.setOptionName1(option_name1);
                        imProductVariants.setOptionValue1(varintValues1[i]);
                        imProductVariants.setOptionName2(option_name2);
                        imProductVariants.setOptionValue2(varintValues2[j]);
                        imProductVariants.setOptionName3(option_name3);
                        imProductVariants.setOptionValue3(varintValues3[k]);
                        imProductVariants.setProductId(product_id);
                        imProductVariants.setImageSrc(productVo.getFirst_image_src().getOriginalFilename());
                        imProductVariants.setIsDelete(0);
                        imProductVariants.setVersion(1);
                        imProductVariants.setCreateEmp("gavin");
                        imProductVariants.setUpdateEmp("gavin");
                        imProductVariants.setCreateTime(timestamp);
                        imProductVariants.setUpdateTime(timestamp);
                        //将属性信息放入记录集合
                        imProductVariantsList.add(imProductVariants);
                        flag++;
                    }
                }
            }
        }
        imProductMapper.insert(imProduct);
        imProductImagesMapper.insertList(imProductImagesList);
        imProductVariantsMapper.insertList(imProductVariantsList);
        return product_id;
    }

    @Override
    public int deleteProduct(int id) {
        ImProduct imProduct = new ImProduct();
        imProduct = imProductMapper.selectByPrimaryKey(id);
        imProduct.setIsDelete(1);
        return imProductMapper.updateByPrimaryKey(imProduct);
    }

    @Override
    public PageInfo<ImProduct> getProductList(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<ImProduct> lists =  imProductMapper.getProductsForDelete(0);
        PageInfo<ImProduct> pageInfo = new PageInfo<ImProduct>(lists);
        return pageInfo;
    }


    public String getUUID(){
        return UUID.randomUUID().toString().replace("-","");
    }

    public Integer getTimeStamp(){
        return Integer.parseInt((System.currentTimeMillis()/1000)+"");
    }

    public String getRandomString(int Len) {
        String[] baseString={"0","1","2","3",
                "4","5","6","7","8","9",
                "a","b","c","d","e",
                "f","g","h","i","j",
                "k","l","m","n","o",
                "p","q","r","s","t",
                "u","v","w","x","y",
                "z","A","B","C","D",
                "E","F","G","H","I",
                "J","K","L","M","N",
                "O","P","Q","R","S",
                "T","U","V","W","X","Y","Z"};
        Random random = new Random();
        int length=baseString.length;
        String randomString="";
        for(int i=0;i<length;i++){
            randomString+=baseString[random.nextInt(length)];
        }
        random = new Random(System.currentTimeMillis());
        String resultStr="";
        for (int i = 0; i < Len; i++) {
            resultStr += randomString.charAt(random.nextInt(randomString.length()-1));
        }
        return resultStr;
    }

    public String getProductId(){
        return "p"+this.getTimeStamp()+this.getRandomString(4);
    }

    public String getSPU(){
        return "spu"+this.getTimeStamp()+this.getRandomString(4);
    }

    public String getSKUPre(){
        return "sku"+this.getTimeStamp()+this.getRandomString(4);
    }

    public String getImageIdPre(){
        return "i"+this.getTimeStamp()+this.getRandomString(4);
    }

    public String getVariantsIdPre(){
        return "v"+this.getTimeStamp()+this.getRandomString(4);
    }

}
