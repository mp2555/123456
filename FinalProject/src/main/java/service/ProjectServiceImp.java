package service;

import java.util.HashMap;
import java.util.List;

import dao.ProjectDAO;
import dto.ProjectDTO;
import dto.Project_teamDTO;

public class ProjectServiceImp implements ProjectService{

	private ProjectDAO dao;
	
	public void setDao(ProjectDAO dao) {
		this.dao = dao;
	}
	
	public ProjectServiceImp() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public void saveProcess(ProjectDTO dto) {
		dao.saveProject(dto);
	}

	@Override
	public ProjectDTO infoProcess(int pro_num) {
		return dao.infoProject(pro_num);
	}

	@Override
	public void uptProcess(ProjectDTO dto) {
		System.out.println("����");
		dao.uptProject(dto);
	}

	@Override
	public String imgChkProcess(ProjectDTO dto) {
		return dao.chkImg(dto);
	}

	@Override
	public void delProcess(int pro_num) {
		dao.delProject(pro_num);

	}

	@Override
	public ProjectDTO pMemberProcess(ProjectDTO dto) {
		return dao.pMemberListMethod(dto);
	}

	@Override
	public void pMemberAdminProcess(HashMap map) {
		dao.pMemberAdminMethod(map);		
	}	

}//end class
