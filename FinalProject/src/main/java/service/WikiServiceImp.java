package service;

import dao.WiKiDAO;

public class WikiServiceImp implements WikiService {

	private WiKiDAO dao;

	public void setDao(WiKiDAO dao) {
		this.dao = dao;
	}

	public WikiServiceImp() {
	
	}

}
