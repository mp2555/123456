package dto;

import java.util.Date;

public class CalenderDTO {

	private int date_num, pro_num;
	private String date_name, date_desc;
	private Date start_date,end_date;
	
	public int getDate_num() {
		return date_num;
	}
	public void setDate_num(int date_num) {
		this.date_num = date_num;
	}
	public int getPro_num() {
		return pro_num;
	}
	public void setPro_num(int pro_num) {
		this.pro_num = pro_num;
	}
	public String getDate_name() {
		return date_name;
	}
	public void setDate_name(String date_name) {
		this.date_name = date_name;
	}
	public String getDate_desc() {
		return date_desc;
	}
	public void setDate_desc(String date_desc) {
		this.date_desc = date_desc;
	}
	public Date getStart_date() {
		return start_date;
	}
	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}
	public Date getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
	
	
}
