package service;

import dto.MemberDTO;

public interface MemberService {
	public void insertProcess(MemberDTO dto);
	public int emailchk(String email);
	public MemberDTO profileProcess(String email);
	public int logProcess(MemberDTO dto);
	
}
