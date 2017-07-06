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
	public ProjectDTO pMemberListMethod(ProjectDTO dto);
	public void pMemberAdminMethod(HashMap<String, Integer> map);
	public void PMemberWithdrawMethid(HashMap<String, Integer> map);
}
