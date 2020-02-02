package com.icodingedu.mall.product;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ImportResource;
import tk.mybatis.spring.annotation.MapperScan;

@SpringBootApplication
@ComponentScan("com.icodingedu.mall")
@MapperScan("com.icodingedu.mall.product.mapper")
@ImportResource(locations = "classpath:provider.xml")
public class ImProductManageApplication {

    public static void main(String[] args) {
        SpringApplication.run(ImProductManageApplication.class, args);
    }

}
