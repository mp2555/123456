package dao;

import org.mybatis.spring.SqlSessionTemplate;

import dto.MemberDTO;

public class MemberDAOImp implements MemberDAO {

	private SqlSessionTemplate sqlSession;

	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	public MemberDAOImp() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public MemberDTO profile(String email) {

		return sqlSession.selectOne("member.profile",email);
	}

	@Override
	public void reg(MemberDTO dto) {
		sqlSession.insert("member.reg",dto);
		
	}

	@Override
	public int emailchk(String email) {
		return sqlSession.selectOne("member.emailchk",email);
	}

	@Override
	public int login(MemberDTO dto) {
		return sqlSession.selectOne("member.log", dto);
	}

	

}// end class
