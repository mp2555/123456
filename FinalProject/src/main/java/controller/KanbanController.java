package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import service.KanbanService;

@Controller
public class KanbanController {

	private KanbanService service;

	public void setService(KanbanService service) {
		this.service = service;
	}

	public KanbanController() {
		
		// TODO Auto-generated constructor stub

	}
	
	@RequestMapping("/kanban.do")
	public ModelAndView kanbanMethod(){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("kanban");
		return mv;
	}
	
	@RequestMapping("/kanbanNewMake.do")
	public ModelAndView NewMakeMethod(){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("kanbanNewMake");
		return mv;
	}
	
	@RequestMapping("/kanbanDetailView.do")
	public ModelAndView detailMethod(){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("kanbanDetailView");
		return mv;
	}

}// end class
