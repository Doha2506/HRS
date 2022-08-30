package com.example.hrs.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;


@EnableWebMvc
@Configuration
@ComponentScan(basePackages = {"com.example.hrs.controller"})
public class AppConfig {
	@Autowired
	ApplicationContext applicationContext;
	
	@Bean
	public ViewResolver viewResolver() {
		InternalResourceViewResolver ivr = new InternalResourceViewResolver();
		ivr.setPrefix("/WEB-INF/views/");
		ivr.setSuffix(".jsp");
		ivr.setOrder(0);
		return ivr;
		
	}
	
	@Bean
	DriverManagerDataSource getDataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
		dataSource.setUrl("jdbc:mysql://localhost/hrs?useSSL=false");
		dataSource.setUsername("root");
		dataSource.setPassword("");
		
		return dataSource;
	}
	

}
