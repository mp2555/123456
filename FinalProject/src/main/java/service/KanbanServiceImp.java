package service;

import dao.KanbanDAO;

public class KanbanServiceImp implements KanbanService {

	private KanbanDAO dao;

	public void setDao(KanbanDAO dao) {
		this.dao = dao;
	}

	public KanbanServiceImp() {
	
	}

}
