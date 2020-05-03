package com.example.springboot;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
public class HelloController {

	@RequestMapping(value = "*")
	public String index() throws InterruptedException {
		Thread.sleep(26);
		return "!";
	}

}
