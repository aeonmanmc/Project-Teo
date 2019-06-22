package com.example.demo;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	@GetMapping("/")
	public String welcome(Map<String, Object> model) {

		List<APojo> lis = new ArrayList<>();
		APojo po = new APojo();
		po.setName("Apple");
		APojo po2 = new APojo();
		po2.setName("Orange Candy");
		lis.add(po);
		lis.add(po2);

		model.put("fruits", lis);
		return "index";
	}

//@ResponseBody to pass json despite the jsp setup

}
