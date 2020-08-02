package com.employee;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@EnableJpaRepositories(basePackages = "com.employee.Repository")
@SpringBootApplication
@ComponentScan(basePackageClasses=EmployeeProjectApplication.class)
public class EmployeeProjectApplication{

	
	public static void main(String[] args) {
		
		SpringApplication.run(EmployeeProjectApplication.class, args);
		
	}

}
