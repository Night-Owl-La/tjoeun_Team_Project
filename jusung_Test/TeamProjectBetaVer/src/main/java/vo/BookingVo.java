package vo;

public class BookingVo {
	
	int bk_idx, user_idx;
	
	String bk_regdate, bk_ticket_count, bk_saet_location;
	String bk_select_date, bk_select_location, bk_select_time;
	String docid;
	
	public BookingVo() {
		
	}
	
	// 
	public int getBk_idx() {
		return bk_idx;
	}
	public void setBk_idx(int bk_idx) {
		this.bk_idx = bk_idx;
	}
	public int getUser_idx() {
		return user_idx;
	}
	public void setUser_idx(int user_idx) {
		this.user_idx = user_idx;
	}
	public String getBk_regdate() {
		return bk_regdate;
	}
	public void setBk_regdate(String bk_regdate) {
		this.bk_regdate = bk_regdate;
	}
	public String getBk_ticket_count() {
		return bk_ticket_count;
	}
	public void setBk_ticket_count(String bk_ticket_count) {
		this.bk_ticket_count = bk_ticket_count;
	}
	public String getBk_saet_location() {
		return bk_saet_location;
	}
	public void setBk_saet_location(String bk_saet_location) {
		this.bk_saet_location = bk_saet_location;
	}
	public String getBk_select_date() {
		return bk_select_date;
	}
	public void setBk_select_date(String bk_select_date) {
		this.bk_select_date = bk_select_date;
	}
	public String getBk_select_location() {
		return bk_select_location;
	}
	public void setBk_select_location(String bk_select_location) {
		this.bk_select_location = bk_select_location;
	}
	public String getBk_select_time() {
		return bk_select_time;
	}
	public void setBk_select_time(String bk_select_time) {
		this.bk_select_time = bk_select_time;
	}
	public String getDocid() {
		return docid;
	}
	public void setDocid(String docid) {
		this.docid = docid;
	}
	
}
