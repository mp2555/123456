package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.CalendarService;

@Controller
public class CalendarController {

	private CalendarService service;

	public void setService(CalendarService service) {
		this.service = service;
	}

	public CalendarController() {
		


	}
	
	@RequestMapping("/calendar.do")
	public ModelAndView calendarMethod(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("calendar");
		return mav;
	}
	
	

}// end class
