package dto;

import java.util.Date;

public class WikiDTO {

	private int wiki_num, pro_num;
	private String wiki_title, wiki_writer,wiki_before,wiki_after;
	private Date date;
	
	public int getWiki_num() {
		return wiki_num;
	}
	public void setWiki_num(int wiki_num) {
		this.wiki_num = wiki_num;
	}
	public int getPro_num() {
		return pro_num;
	}
	public void setPro_num(int pro_num) {
		this.pro_num = pro_num;
	}
	public String getWiki_title() {
		return wiki_title;
	}
	public void setWiki_title(String wiki_title) {
		this.wiki_title = wiki_title;
	}
	public String getWiki_writer() {
		return wiki_writer;
	}
	public void setWiki_writer(String wiki_writer) {
		this.wiki_writer = wiki_writer;
	}
	public String getWiki_before() {
		return wiki_before;
	}
	public void setWiki_before(String wiki_before) {
		this.wiki_before = wiki_before;
	}
	public String getWiki_after() {
		return wiki_after;
	}
	public void setWiki_after(String wiki_after) {
		this.wiki_after = wiki_after;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	
	
}
