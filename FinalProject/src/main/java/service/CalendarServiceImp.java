package service;

import dao.CalendarDAO;

public class CalendarServiceImp implements CalendarService{

	private CalendarDAO dao;
	
	public void setDao(CalendarDAO dao) {
		this.dao = dao;
	}

	public CalendarServiceImp() {
	
	}

}
