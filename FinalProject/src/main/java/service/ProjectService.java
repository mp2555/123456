package service;

import java.util.HashMap;

import dto.ProjectDTO;


public interface ProjectService {
	public void saveProcess(ProjectDTO dto);
	public ProjectDTO infoProcess(int pro_num);
	public void uptProcess(ProjectDTO dto);
	public String imgChkProcess(ProjectDTO dto);
	public void delProcess(int pro_num);
	public ProjectDTO pMemberProcess(ProjectDTO dto);
	public void pMemberAdminProcess(HashMap map);
}
