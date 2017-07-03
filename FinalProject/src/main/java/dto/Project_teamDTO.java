package dto;


public class Project_teamDTO {

	private int team_num, mem_num, team_admin, req;

	private ProjectDTO project;

	private MemberDTO final_mem;

	public Project_teamDTO() {
		// TODO Auto-generated constructor stub
	}
	


	public ProjectDTO getProject() {
		return project;
	}



	public void setProject(ProjectDTO project) {
		this.project = project;
	}



	public MemberDTO getFinal_mem() {
		return final_mem;
	}



	public void setFinal_mem(MemberDTO final_mem) {
		this.final_mem = final_mem;
	}



	public int getTeam_num() {
		return team_num;
	}

	public void setTeam_num(int team_num) {
		this.team_num = team_num;
	}

	public int getMem_num() {
		return mem_num;
	}

	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}

	public int getTeam_admin() {
		return team_admin;
	}

	public void setTeam_admin(int team_admin) {
		this.team_admin = team_admin;
	}

	public int getReq() {
		return req;
	}

	public void setReq(int req) {
		this.req = req;
	}

}// end class
