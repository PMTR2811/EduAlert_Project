package com.edualert.edualert_app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.persistence.autoconfigure.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication(scanBasePackages = "com.edualert")
@EntityScan(basePackages = "com.edualert.entity")
@EnableJpaRepositories(basePackages = "com.edualert.repository")
public class EdualertAppApplication {

	public static void main(String[] args) {
		SpringApplication.run(EdualertAppApplication.class, args);
	}
}