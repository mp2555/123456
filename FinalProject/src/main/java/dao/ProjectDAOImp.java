package dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import dto.ProjectDTO;
import dto.Project_teamDTO;

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
	public void pMemberAdminMethod(HashMap map) {
		sqlSession.update("project_member_admin",map);		
	}
	
}//end class

