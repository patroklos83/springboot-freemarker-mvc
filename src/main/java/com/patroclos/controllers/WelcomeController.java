package com.patroclos.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.patroclos.model.Person;

@Controller
public class WelcomeController {

	@GetMapping("/welcome")
	public String welcome(Model model) {
		return "welcome";
	}

	@PostMapping("/welcome")
	public String formPost(Person person, Model model) {
		model.addAttribute("person", person);
		return "welcome";
	}

}
