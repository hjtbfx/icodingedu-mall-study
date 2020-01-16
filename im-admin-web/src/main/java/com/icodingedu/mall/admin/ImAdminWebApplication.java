package com.icodingedu.mall.admin;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ImportResource;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@SpringBootApplication
public class ImAdminWebApplication {

	public static void main(String[] args) {
		SpringApplication.run(ImAdminWebApplication.class, args);
	}

}
