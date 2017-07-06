package service;

import java.util.HashMap;

import dto.ProjectDTO;


public interface ProjectService {
	public void saveProcess(ProjectDTO dto);
	public ProjectDTO infoProcess(int pro_num);
	public void uptProcess(ProjectDTO dto);
	public String imgChkProcess(ProjectDTO dto);
	public void delProcess(int pro_num);
	
	public int adminChkProcess(ProjectDTO dto);
	public int memChkProcess(HashMap<String, Object> map);
	public int emailChkProcess(String email);
	public void memInsProcess(HashMap<String, Object> map);
	
	public ProjectDTO pMemberProcess(ProjectDTO dto);
	public void pMemberAdminProcess(HashMap<String,Integer> map);
	public void pMemberWithdrawProcess(HashMap<String,Integer> map);
}
