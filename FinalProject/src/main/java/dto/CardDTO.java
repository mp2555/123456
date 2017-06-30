package dto;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class CardDTO {

	private int card_num, kanban_num, card_order;
	private String chef_mem, card_name, tag, descript;
	private Date card_when, due_date;
	private MultipartFile filename;
	
	public int getCard_num() {
		return card_num;
	}
	public void setCard_num(int card_num) {
		this.card_num = card_num;
	}
	public int getKanban_num() {
		return kanban_num;
	}
	public void setKanban_num(int kanban_num) {
		this.kanban_num = kanban_num;
	}
	public int getCard_order() {
		return card_order;
	}
	public void setCard_order(int card_order) {
		this.card_order = card_order;
	}
	public String getChef_mem() {
		return chef_mem;
	}
	public void setChef_mem(String chef_mem) {
		this.chef_mem = chef_mem;
	}
	public String getCard_name() {
		return card_name;
	}
	public void setCard_name(String card_name) {
		this.card_name = card_name;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public String getDescript() {
		return descript;
	}
	public void setDescript(String descript) {
		this.descript = descript;
	}
	public Date getCard_when() {
		return card_when;
	}
	public void setCard_when(Date card_when) {
		this.card_when = card_when;
	}
	public Date getDue_date() {
		return due_date;
	}
	public void setDue_date(Date due_date) {
		this.due_date = due_date;
	}
	public MultipartFile getFilename() {
		return filename;
	}
	public void setFilename(MultipartFile filename) {
		this.filename = filename;
	}
	
	
}
