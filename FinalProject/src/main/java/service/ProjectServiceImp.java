package service;

import dao.ProjectDAO;
import dto.ProjectDTO;

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
		System.out.println("업뎃");
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

}//end class
