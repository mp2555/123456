package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import service.WikiService;

@Controller
public class WikiController {

	private WikiService service;

	public void setService(WikiService service) {
		this.service = service;
	}

	public WikiController() {
		
		// TODO Auto-generated constructor stub

	}

}// end class
