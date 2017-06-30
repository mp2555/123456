package dao;

import dto.MemberDTO;

public interface MemberDAO {
	public MemberDTO profile(String email);

	public void reg(MemberDTO dto);

	public int emailchk(String email);

	public int login(MemberDTO dto);

}
