package service;

import java.util.List;

import dao.MemberDAO;
import dto.MemberDTO;

public class MemberServiceImp implements MemberService{

	private MemberDAO dao;

	public void setDao(MemberDAO dao) {
		this.dao = dao;
	}
	
	public MemberServiceImp() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public MemberDTO profileProcess(String email) {
		return dao.profile(email);
	}

	@Override
	public void insertProcess(MemberDTO dto) {
		dao.reg(dto);
	}

	@Override
	public int emailchk(String email) {
		
		return dao.emailchk(email);
	}

	@Override
	public int logProcess(MemberDTO dto) {
		return dao.login(dto);
	}

	@Override
	public MemberDTO projectListProcess(MemberDTO dto) {
		return dao.projectList(dto);
	}
	
}//end class
