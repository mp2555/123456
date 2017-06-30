package service;

import dao.CardDAO;

public class CardServiceImp implements CardService {

	private CardDAO dao;

	public void setDao(CardDAO dao) {
		this.dao = dao;
	}

	public CardServiceImp() {
	
	}

}
