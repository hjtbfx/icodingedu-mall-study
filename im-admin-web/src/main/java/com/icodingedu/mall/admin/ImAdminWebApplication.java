package com.icodingedu.mall.admin;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ImportResource;

@SpringBootApplication
@ComponentScan("com.icodingedu.mall")
@ImportResource(locations = "classpath:consumer.xml")
public class ImAdminWebApplication {

	public static void main(String[] args) {
		SpringApplication.run(ImAdminWebApplication.class, args);
	}

}
