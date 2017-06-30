package dao;

import org.mybatis.spring.SqlSessionTemplate;

public class KanbanDAOImp implements KanbanDAO{

	private SqlSessionTemplate sqlSession;

	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public KanbanDAOImp() {
		// TODO Auto-generated constructor stub
	}
	
}//class
