package vo;

public class TimetableVo {
	
	int tht_idx;
	int scr_idx;
	int scr_seat_count;
	
	String tht_name;
	String scr_d_date;
	String scr_d_time;
	String docid;
	
	public TimetableVo() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	public int getTht_idx() {
		return tht_idx;
	}
	public void setTht_idx(int tht_idx) {
		this.tht_idx = tht_idx;
	}
	public int getScr_idx() {
		return scr_idx;
	}
	public void setScr_idx(int scr_idx) {
		this.scr_idx = scr_idx;
	}
	public int getScr_seat_count() {
		return scr_seat_count;
	}
	public void setScr_seat_count(int scr_seat_count) {
		this.scr_seat_count = scr_seat_count;
	}
	public String getTht_name() {
		return tht_name;
	}
	public void setTht_name(String tht_name) {
		this.tht_name = tht_name;
	}
	public String getScr_d_date() {
		return scr_d_date;
	}
	public void setScr_d_date(String scr_d_date) {
		this.scr_d_date = scr_d_date;
	}
	public String getScr_d_time() {
		return scr_d_time;
	}
	public void setScr_d_time(String scr_d_time) {
		this.scr_d_time = scr_d_time;
	}
	public String getDocid() {
		return docid;
	}
	public void setDocid(String docid) {
		this.docid = docid;
	}
	
}
