package dao;

import dto.ProjectDTO;

public interface ProjectDAO {
	public void saveProject(ProjectDTO dto);
	public ProjectDTO infoProject(int pro_num);
	public void uptProject(ProjectDTO dto);
	public String chkImg(ProjectDTO dto);
	public void delProject(int pro_num);
}
