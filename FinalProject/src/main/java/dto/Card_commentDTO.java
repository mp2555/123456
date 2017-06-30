package dto;

import java.util.Date;

public class Card_commentDTO {

	private int comment_num,card_num;
	private String comment_writer,comment_content;
	private Date comment_when;
	
	public int getComment_num() {
		return comment_num;
	}
	public void setComment_num(int comment_num) {
		this.comment_num = comment_num;
	}
	public int getCard_num() {
		return card_num;
	}
	public void setCard_num(int card_num) {
		this.card_num = card_num;
	}
	public String getComment_writer() {
		return comment_writer;
	}
	public void setComment_writer(String comment_writer) {
		this.comment_writer = comment_writer;
	}
	public String getComment_content() {
		return comment_content;
	}
	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}
	public Date getComment_when() {
		return comment_when;
	}
	public void setComment_when(Date comment_when) {
		this.comment_when = comment_when;
	}
	
	
}//end class
