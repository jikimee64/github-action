package com.githubaction;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@Slf4j
@SpringBootApplication
public class GithubactionApplication {

	public static void main(String[] args) {
		SpringApplication.run(GithubactionApplication.class, args);
	}

}
