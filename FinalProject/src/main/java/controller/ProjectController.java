package controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import dto.ProjectDTO;
import service.ProjectService;

@Controller
public class ProjectController {

	private ProjectService service;

	public void setService(ProjectService service) {
		this.service = service;
	}

	public ProjectController() {

	}

	@RequestMapping("/dashboard.do")
	public ModelAndView boardMethod() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("dashboard");
		return mav;
	}

	@RequestMapping("/project_member.do")
	public ModelAndView memberMethod() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("project_member");
		return mav;
	}

	// 프로젝트 정보 보기
	@RequestMapping("/project_info.do")
	public ModelAndView projectMethod(HttpServletRequest request) {
		int pro_num = 1; // dashboard에서 클릭시 받아와야할 pro_num 매개변수
		ProjectDTO dto = service.infoProcess(pro_num);
		System.out.println(dto.getPro_pic());
		
		if(dto.getPro_pic()!=null){
			dto.setPic_change(1);
		}

		ModelAndView mav = new ModelAndView();

		mav.addObject("dto", dto);
		mav.setViewName("project_info");
		return mav;
	}

	// 프로젝트 정보 수정
	@RequestMapping(value = "/project_upt.do", method = RequestMethod.POST)
	public String projectUptMethod(ProjectDTO dto, HttpServletRequest request) {
		int pro_num = 1; // dashboard에서 클릭시 받아와야할 pro_num 매개변수
		dto.setPro_num(pro_num);// 매개변수 추가하면 지워야함

		String pro_pic = service.imgChkProcess(dto);

		// 기존의 이미지 파일이 있으면
		if (pro_pic != null) {
			String root = request.getSession().getServletContext().getRealPath("/");

			// root/" 저장경로래
			String saveDirectory = root +"files"+ File.separator;
			// fe(기존파일)을 삭제
			File fe = new File(saveDirectory, pro_pic);
			fe.delete();
			System.out.println("기존 이미지 삭제 완료");
		}

		// 수정 부분
		MultipartFile file = dto.getFilename();

		if (dto.getPic_change() != 0) {
			String fileName = file.getOriginalFilename();
			String root = request.getSession().getServletContext().getRealPath("/");
			// 중복파일명을 처리하기 위해 난수 발생
			UUID random = UUID.randomUUID();

			// System.out.println(dto.getPic_change());
			String saveDirectory = root +"files"+ File.separator;

			File fe = new File(saveDirectory);
			if (!fe.exists()) {
				fe.mkdir();
			}

			File ff = new File(saveDirectory, random + "_" + fileName);
			try {
				FileCopyUtils.copy(file.getInputStream(), new FileOutputStream(ff));
			} catch (FileNotFoundException e) {

				e.printStackTrace();
			} catch (IOException e) {

				e.printStackTrace();
			}

			dto.setPro_pic(random + "_" + fileName);
		}

		service.uptProcess(dto);

		return "redirect:/dashboard.do";
	}

	// 프로젝트 삭제
	@RequestMapping(value = "/project_del.do", method = RequestMethod.POST)
	public String projectDelMethod(ProjectDTO dto, HttpServletRequest request) {
		int pro_num = 65; // dashboard에서 클릭시 받아와야할 pro_num 매개변수
		dto.setPro_num(pro_num);// 매개변수 추가하면 지워야함
		String pro_pic = service.imgChkProcess(dto);

		// 기존의 이미지 파일이 있으면
		if (pro_pic != null) {
			String root = request.getSession().getServletContext().getRealPath("/");

			// root/" 저장경로래
			String saveDirectory = root +"files"+ File.separator;
			// fe(기존파일)을 삭제
			File fe = new File(saveDirectory, pro_pic);
			fe.delete();
			System.out.println("기존 이미지 삭제 완료");
		}

		service.delProcess(pro_num);
		return "redirect:/dashboard.do";
	}

	// 프로젝트 등록페이지
	@RequestMapping("/project_reg.do")
	public ModelAndView projectRegMethod() {
		ModelAndView mav = new ModelAndView();

		mav.setViewName("project_reg");
		return mav;
	}

	// 프로젝트 등록
	@RequestMapping(value = "/project_reg.do", method = RequestMethod.POST)
	public String projectClearMethod(ProjectDTO dto, HttpServletRequest request) {
		MultipartFile file = dto.getFilename();
		// System.out.println(dto.getPic_change());

		if (dto.getPic_change() != 0) {
			String fileName = file.getOriginalFilename();
			
			String root = request.getSession().getServletContext().getRealPath("/");
			// 중복파일명을 처리하기 위해 난수 발생
			UUID random = UUID.randomUUID();
			// String root =
			// request.getSession().getServletContext().getRealPath("/");
			// System.out.println(root);
			String saveDirectory = root +"files"+ File.separator;

			// System.out.println(saveDirectory);
			File fe = new File(saveDirectory);
			if (!fe.exists()) {
				fe.mkdir();
			}

			File ff = new File(saveDirectory, random + "_" + fileName);
			try {
				FileCopyUtils.copy(file.getInputStream(), new FileOutputStream(ff));
			} catch (FileNotFoundException e) {

				e.printStackTrace();
			} catch (IOException e) {

				e.printStackTrace();
			}

			dto.setPro_pic(random + "_" + fileName);
		}

		service.saveProcess(dto);
		System.out.println(dto.getPro_title());
		System.out.println(dto.getPro_des());
		System.out.println(dto.getPro_pic());
		return "redirect:/dashboard.do";
	}

	@RequestMapping("/wiki.do")
	public ModelAndView wikiMethod() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("wiki");
		return mav;
	}

	@RequestMapping("/timeline.do")
	public ModelAndView timelineMethod() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("timeline");
		return mav;
	}

}// end class
