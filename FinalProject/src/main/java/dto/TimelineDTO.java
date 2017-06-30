package dto;

import java.util.Date;

public class TimelineDTO {

	private int time_num, pro_num;
	private String time_who,time_where,time_what,time_how;
	private Date time_when;
	
	public int getTime_num() {
		return time_num;
	}
	public void setTime_num(int time_num) {
		this.time_num = time_num;
	}
	public int getPro_num() {
		return pro_num;
	}
	public void setPro_num(int pro_num) {
		this.pro_num = pro_num;
	}
	public String getTime_who() {
		return time_who;
	}
	public void setTime_who(String time_who) {
		this.time_who = time_who;
	}
	public String getTime_where() {
		return time_where;
	}
	public void setTime_where(String time_where) {
		this.time_where = time_where;
	}
	public String getTime_what() {
		return time_what;
	}
	public void setTime_what(String time_what) {
		this.time_what = time_what;
	}
	public String getTime_how() {
		return time_how;
	}
	public void setTime_how(String time_how) {
		this.time_how = time_how;
	}
	public Date getTime_when() {
		return time_when;
	}
	public void setTime_when(Date time_when) {
		this.time_when = time_when;
	}
	
	
}
