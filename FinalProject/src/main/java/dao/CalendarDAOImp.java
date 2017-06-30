package dao;

import org.mybatis.spring.SqlSessionTemplate;

public class CalendarDAOImp implements CalendarDAO{

	private SqlSessionTemplate sqlSession;

	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public CalendarDAOImp() {
		// TODO Auto-generated constructor stub
	}
	
}//class
