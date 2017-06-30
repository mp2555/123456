package dto;

import org.springframework.web.multipart.MultipartFile;

public class ProjectDTO {

	private int pro_num;
	private String pro_title, pro_des, pro_pic;
	private int pic_change;
	
	
	public int getPic_change() {
		return pic_change;
	}
	public void setPic_change(int pic_change) {
		this.pic_change = pic_change;
	}
	
	//첨부파일(프로젝트 이미지)
	private MultipartFile filename;
	
	public MultipartFile getFilename() {
		return filename;
	}
	public void setFilename(MultipartFile filename) {
		this.filename = filename;
	}
	public int getPro_num() {
		return pro_num;
	}
	public void setPro_num(int pro_num) {
		this.pro_num = pro_num;
	}
	public String getPro_title() {
		return pro_title;
	}
	public void setPro_title(String pro_title) {
		this.pro_title = pro_title;
	}
	public String getPro_des() {
		return pro_des;
	}
	public void setPro_des(String pro_des) {
		this.pro_des = pro_des;
	}
	public String getPro_pic() {
		return pro_pic;
	}
	public void setPro_pic(String pro_pic) {
		this.pro_pic = pro_pic;
	}


}//end class
