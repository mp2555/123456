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
	public void pMemberAdminProcess(HashMap<String, Integer> map) {
		dao.pMemberAdminMethod(map);		
	}

	@Override
	public void pMemberWithdrawProcess(HashMap<String, Integer> map) {
		dao.PMemberWithdrawMethid(map);
	}

	@Override
	public int adminChkProcess(ProjectDTO dto) {
		return dao.adminChk(dto);
	}

	@Override
	public int memChkProcess(HashMap<String, Object> map) {

		return dao.memChk(map);
	}

	@Override
	public int emailChkProcess(String email) {

		return dao.emailChk(email);
	}

	@Override
	public void memInsProcess(HashMap<String, Object> map) {
		dao.memIns(map);

	}	

}//end class
