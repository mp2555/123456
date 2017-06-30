package dao;

import org.mybatis.spring.SqlSessionTemplate;

public class CardDAOImp implements CardDAO{

	private SqlSessionTemplate sqlSession;

	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public CardDAOImp() {
		// TODO Auto-generated constructor stub
	}
	
}//class
