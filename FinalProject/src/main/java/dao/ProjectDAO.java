package dao;

import java.util.HashMap;

import dto.MemberDTO;
import dto.ProjectDTO;

public interface ProjectDAO {
	public void saveProject(ProjectDTO dto);
	public ProjectDTO infoProject(int pro_num);
	public void uptProject(ProjectDTO dto);
	public String chkImg(ProjectDTO dto);
	public void delProject(int pro_num);
	
	public int adminChk(ProjectDTO dto);
	public int memChk(HashMap<String, Object> map);
	public int emailChk(String email);
	public void memIns(HashMap<String, Object> map);
	
	public ProjectDTO pMemberListMethod(ProjectDTO dto);
	public void pMemberAdminMethod(HashMap<String, Integer> map);
	public void PMemberWithdrawMethid(HashMap<String, Integer> map);
}
