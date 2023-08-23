package com.sist.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.*;
@Controller
@CrossOrigin("*")
public class MainController {
	@GetMapping("main/main.do")
	public String main_main() {
		return "main";
	}
	
}
