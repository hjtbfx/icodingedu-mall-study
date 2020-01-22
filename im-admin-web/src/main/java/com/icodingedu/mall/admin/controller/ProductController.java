package com.icodingedu.mall.admin.controller;

import com.github.pagehelper.PageInfo;;
import com.icodingedu.mall.api.bean.ImProduct;
import com.icodingedu.mall.api.bo.ImageFileDTO;
import com.icodingedu.mall.api.bo.ProductDTO;
import com.icodingedu.mall.api.bo.ProductVo;
import com.icodingedu.mall.api.service.ProductService;
import com.icodingedu.mall.common.Tools;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class ProductController {

    @Autowired
    ProductService productService;

    @PostMapping("/addProduct")
    public String addProduct(ProductVo productVo){
        System.out.println("******************************");
        System.out.println("productVo.getProduct_title():"+productVo.getProduct_title());
        System.out.println("productVo.getUrl_handle():"+productVo.getUrl_handle());
        System.out.println("productVo.getFirst_image_src():"+productVo.getFirst_image_src().getName());
        System.out.println("productVo.getSecond_image_src():"+productVo.getSecond_image_src().getName());
        System.out.println("productVo.getDetail_image_src():"+productVo.getDetail_image_src());
        MultipartFile [] mfs = productVo.getDetail_image_src();
        for (MultipartFile mf : mfs) {
            System.out.println("多文件传递Name : "+mf.getName()+"---"+mf.getOriginalFilename());
            System.out.println("多文件传递Size : "+mf.getSize());
        }
        System.out.println("productVo.getSale_price():"+productVo.getOriginal_price());
        System.out.println("productVo.getSale_price():"+productVo.getSale_price());
        System.out.println("productVo.getStatus():"+productVo.getStatus());
        System.out.println("productVo.getShort_description():"+productVo.getShort_description());
        System.out.println("productVo.getDetail_description():"+productVo.getDetail_description());
        System.out.println("productVo.getOption_name1():"+productVo.getOption_name1());
        System.out.println("productVo.getOption_name2():"+productVo.getOption_name2());
        System.out.println("productVo.getOption_name3():"+productVo.getOption_name3());
        System.out.println("productVo.getOption_value1():"+productVo.getOption_value1());
        System.out.println("productVo.getOption_value2():"+productVo.getOption_value2());
        System.out.println("productVo.getOption_value3():"+productVo.getOption_value3());
        System.out.println("productVo.getVariants_weight():"+productVo.getVariants_weight());

        productService.addProduct(changeForProductVo(productVo));

        return "redirect:/product-list";
    }

    @GetMapping("/product-list")
    public String toProductList(Model model, @RequestParam(value="page",required = false,defaultValue = "1") int pageNum){//springframework
        PageInfo<ImProduct> imProductList = productService.getProductList(pageNum,15);
        model.addAttribute("imProductList",imProductList);
        model.addAttribute("Tools",new Tools());
        return "product-list";
    }

    @GetMapping("/delete-product")
    public String deleteProduct(@RequestParam(value = "id") int id){
        int flag = productService.deleteProduct(id);
        return "redirect:/product-list";
    }

    public ProductDTO changeForProductVo(ProductVo productVo){
        ProductDTO productDTO = new ProductDTO();
        try {
            productDTO.setProduct_id(productVo.getProduct_id());
            productDTO.setProduct_title(productVo.getProduct_title());
            productDTO.setUrl_handle(productVo.getUrl_handle());
            ImageFileDTO first_image_src = new ImageFileDTO();
            first_image_src.setBytes(productVo.getFirst_image_src().getBytes());
            first_image_src.setContentType(productVo.getFirst_image_src().getContentType());
            first_image_src.setName(productVo.getFirst_image_src().getName());
            first_image_src.setOriginalFilename(productVo.getFirst_image_src().getOriginalFilename());
            first_image_src.setSize(productVo.getFirst_image_src().getSize());
            productDTO.setFirst_image_src(first_image_src);
            ImageFileDTO second_image_src = new ImageFileDTO();
            second_image_src.setBytes(productVo.getSecond_image_src().getBytes());
            second_image_src.setContentType(productVo.getSecond_image_src().getContentType());
            second_image_src.setName(productVo.getSecond_image_src().getName());
            second_image_src.setOriginalFilename(productVo.getSecond_image_src().getOriginalFilename());
            second_image_src.setSize(productVo.getSecond_image_src().getSize());
            productDTO.setSecond_image_src(second_image_src);
            MultipartFile [] mfs = productVo.getDetail_image_src();
            ImageFileDTO [] imageFileDTOS = new ImageFileDTO[mfs.length];
            for (int i=0;i<mfs.length;i++) {
                imageFileDTOS[i] = new ImageFileDTO();
                imageFileDTOS[i].setBytes(mfs[i].getBytes());
                imageFileDTOS[i].setContentType(mfs[i].getContentType());
                imageFileDTOS[i].setName(mfs[i].getName());
                imageFileDTOS[i].setOriginalFilename(mfs[i].getOriginalFilename());
                imageFileDTOS[i].setSize(mfs[i].getSize());
            }
            productDTO.setDetail_image_src(imageFileDTOS);
            productDTO.setOriginal_price(productVo.getOriginal_price());
            productDTO.setSale_price(productVo.getSale_price());
            productDTO.setStatus(productVo.getStatus());
            productDTO.setShort_description(productVo.getShort_description());
            productDTO.setDetail_description(productVo.getDetail_description());
            productDTO.setOption_name1(productVo.getOption_name1());
            productDTO.setOption_name2(productVo.getOption_name2());
            productDTO.setOption_name3(productVo.getOption_name3());
            productDTO.setOption_value1(productVo.getOption_value1());
            productDTO.setOption_value2(productVo.getOption_value2());
            productDTO.setOption_value3(productVo.getOption_value3());
            productDTO.setVariants_weight(productVo.getVariants_weight());
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            return productDTO;
        }
    }
}
