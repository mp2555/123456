package service;

import java.util.List;

import dto.MemberDTO;

public interface MemberService {
	public void insertProcess(MemberDTO dto);
	public int emailchk(String email);
	public MemberDTO profileProcess(String email);
	public int logProcess(MemberDTO dto);
	public MemberDTO projectListProcess(MemberDTO dto);
	
}
