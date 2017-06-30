package dto;

import java.util.Date;

public class SubscribeDTO {

	private int sub_num,card_num,mem_num;
	private Date sub_when;
	
	public int getSub_num() {
		return sub_num;
	}
	public void setSub_num(int sub_num) {
		this.sub_num = sub_num;
	}
	public int getCard_num() {
		return card_num;
	}
	public void setCard_num(int card_num) {
		this.card_num = card_num;
	}
	public int getMem_num() {
		return mem_num;
	}
	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}
	public Date getSub_when() {
		return sub_when;
	}
	public void setSub_when(Date sub_when) {
		this.sub_when = sub_when;
	}
	
	
}
