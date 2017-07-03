package dto;

import java.util.List;

public class MemberDTO {

	private int mem_num;

	private String name, email, pass, introduce, picture, initial_name;

	private List<Project_teamDTO> team;

	public MemberDTO() {
		// TODO Auto-generated constructor stub
	}

	public int getMem_num() {
		return mem_num;
	}

	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getInitial_name() {
		return initial_name;
	}

	public void setInitial_name(String initial_name) {
		this.initial_name = initial_name;
	}

	public List<Project_teamDTO> getTeam() {
		return team;
	}

	public void setTeam(List<Project_teamDTO> team) {
		this.team = team;
	}

	
	
	
	
}//end class
