package dto;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Card_fileDTO {

	private int file_num,card_num,file_link;
	private String upload_file;
	private Date file_when;
	private MultipartFile fileName;
	
	public int getFile_num() {
		return file_num;
	}
	public void setFile_num(int file_num) {
		this.file_num = file_num;
	}
	public int getCard_num() {
		return card_num;
	}
	public void setCard_num(int card_num) {
		this.card_num = card_num;
	}
	public int getFile_link() {
		return file_link;
	}
	public void setFile_link(int file_link) {
		this.file_link = file_link;
	}
	public String getUpload_file() {
		return upload_file;
	}
	public void setUpload_file(String upload_file) {
		this.upload_file = upload_file;
	}
	public Date getFile_when() {
		return file_when;
	}
	public void setFile_when(Date file_when) {
		this.file_when = file_when;
	}
	public MultipartFile getFileName() {
		return fileName;
	}
	public void setFileName(MultipartFile fileName) {
		this.fileName = fileName;
	}
	
	
}
