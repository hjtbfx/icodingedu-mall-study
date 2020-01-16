package com.icodingedu.mall.product;

import org.apache.dubbo.config.spring.context.annotation.EnableDubbo;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ImportResource;
import tk.mybatis.spring.annotation.MapperScan;

@ComponentScan("com.icodingedu.mall")
@SpringBootApplication
@MapperScan("com.icodingedu.mall.product.mapper")
public class ImProductManageApplication {

    public static void main(String[] args) {
        SpringApplication.run(ImProductManageApplication.class, args);
    }

}
