package service;

import dto.ProjectDTO;

public interface ProjectService {
	public void saveProcess(ProjectDTO dto);
	public ProjectDTO infoProcess(int pro_num);
	public void uptProcess(ProjectDTO dto);
	public String imgChkProcess(ProjectDTO dto);
	public void delProcess(int pro_num);
}
