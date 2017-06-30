package dao;

import org.mybatis.spring.SqlSessionTemplate;

public class WikiDAOImp implements WiKiDAO{

	private SqlSessionTemplate sqlSession;

	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public WikiDAOImp() {
		// TODO Auto-generated constructor stub
	}
	
}//class
