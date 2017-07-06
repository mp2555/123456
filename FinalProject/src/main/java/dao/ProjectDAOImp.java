package dao;


import java.util.HashMap;
import org.mybatis.spring.SqlSessionTemplate;
import dto.ProjectDTO;


public class ProjectDAOImp implements ProjectDAO{

	private SqlSessionTemplate sqlSession;

	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public ProjectDAOImp() {
	}

	@Override
	public void saveProject(ProjectDTO dto) {
		sqlSession.insert("project.project_make", dto);
	}

	@Override
	public ProjectDTO infoProject(int pro_num) {
		return sqlSession.selectOne("project.project_info", pro_num);
	}

	@Override
	public void uptProject(ProjectDTO dto) {
		System.out.println("��濡�����dao ����");
		sqlSession.update("project.project_upt", dto);
	}

	@Override
	public String chkImg(ProjectDTO dto) {
	
		return sqlSession.selectOne("project.project_imgChk", dto);
	}

	@Override
	public void delProject(int pro_num) {
		sqlSession.delete("project.project_del", pro_num);
	}

	@Override
	public ProjectDTO pMemberListMethod(ProjectDTO dto) {		
		return sqlSession.selectOne("project.project_member_list",dto);
	}

	@Override
	public void pMemberAdminMethod(HashMap<String,Integer> map) {
		sqlSession.update("project.project_member_admin",map);
	}

	@Override
	public void PMemberWithdrawMethid(HashMap<String, Integer> map) {
		sqlSession.delete("project.project_member_del",map);
	}

	@Override
	public int adminChk(ProjectDTO dto) {
		
		return sqlSession.selectOne("project.project_admin", dto);
	}


	@Override
	public int memChk(HashMap<String, Object> map) {
	
		return sqlSession.selectOne("project.project_memberChk", map);
	}

	@Override
	public int emailChk(String email) {

		return sqlSession.selectOne("project.emailchk", email);
	}

	@Override
	public void memIns(HashMap<String, Object> map) {
		sqlSession.insert("project.project_req", map);
		
	}

	
}//end class

