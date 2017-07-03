package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import dto.MemberDTO;
import service.MemberService;

@Controller
public class MemberController {

	private MemberService service;
	
	public void setService(MemberService service) {
		this.service = service;
	}
	
	public MemberController() {
		// TODO Auto-generated constructor stub
	}

	//http://localhost:8090/project/login.do
	
	@RequestMapping("/login.do")
	public ModelAndView loginMethod(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("login");
		return mav;
		
	}

	@RequestMapping(value="/loginchk.do", method=RequestMethod.POST)
	public ModelAndView loginchkMethod(MemberDTO mdto, HttpServletRequest request) {
		MemberDTO dto = null;
		HttpSession session = null;
		ModelAndView mav = new ModelAndView();
		
		int count = service.logProcess(mdto);
		
		if(count==1){
			dto = service.profileProcess(mdto.getEmail());
			session = request.getSession();
			session.setAttribute("dto", dto);
			session.setMaxInactiveInterval(30*60);
			mav.addObject("session",session);
			mav.setViewName("redirect:/dashboard.do");
			
		}
		else{
			mav.setViewName("redirect:/login.do?chk=1");
		}
		
			return mav;
	 }
	
	@RequestMapping("/logout.do")
	public ModelAndView logoutMethod(HttpServletRequest request){
		ModelAndView mav=new ModelAndView();
		HttpSession session=request.getSession();		
		MemberDTO dto=(MemberDTO)session.getAttribute("dto");
		
		if(dto!=null){
			session.invalidate(); //�몄������湲�
		}
		mav.setViewName("redirect:/login.do");
		return mav;
	}
	

	
	@RequestMapping(value = "/join.do", method = RequestMethod.GET)
	public ModelAndView joinMethod(MemberDTO dto) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("join");
		return mav;
	}

	@RequestMapping(value = "/join.do", method = RequestMethod.POST)
	public String joinnMethod(MemberDTO dto, HttpServletRequest request) {

		service.insertProcess(dto);
		return "redirect:/login.do";
	}

	@RequestMapping(value = "/joinForm.do", method = RequestMethod.POST, produces = "application/json; charset=UTF-8")
	public @ResponseBody int chkprocess(String email) {
		int count = service.emailchk(email);
		return count;
	}

	@RequestMapping("/profile.do")
	public ModelAndView testMethod(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("profile");
		return mav;
	}
	
	@RequestMapping("/dashboard.do")
	public ModelAndView boardMethod(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();		
		MemberDTO mdto=service.projectListProcess(getSessionInfo(request));

		mav.addObject("mdto",mdto);
		mav.setViewName("dashboard");
		return mav;
	}
	
	//세션의 dto 가져오는 매소드
	public MemberDTO getSessionInfo(HttpServletRequest request){
		HttpSession session=request.getSession();		
		MemberDTO dto=(MemberDTO)session.getAttribute("dto");
		return dto;
	}

}// end class


