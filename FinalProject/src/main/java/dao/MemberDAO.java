package dao;

import java.util.List;

import dto.MemberDTO;

public interface MemberDAO {
	public MemberDTO profile(String email);

	public void reg(MemberDTO dto);

	public int emailchk(String email);

	public int login(MemberDTO dto);
	
	public MemberDTO projectList(MemberDTO dto);

}
