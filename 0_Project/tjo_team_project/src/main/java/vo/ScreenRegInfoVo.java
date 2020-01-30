package vo;

public class ScreenRegInfoVo {
	String DOCID;
	String scr_reg_title;
	int scr_ticket_price;
	int scr_idx;

	public String getDOCID() {
		return DOCID;
	}

	public void setDOCID(String dOCID) {
		DOCID = dOCID;
	}

	public String getScr_reg_title() {
		return scr_reg_title;
	}

	public void setScr_reg_title(String scr_reg_title) {
		this.scr_reg_title = scr_reg_title;
	}

	public int getScr_ticket_price() {
		return scr_ticket_price;
	}

	public void setScr_ticket_price(int scr_ticket_price) {
		this.scr_ticket_price = scr_ticket_price;
	}

	public int getScr_idx() {
		return scr_idx;
	}

	public void setScr_idx(int scr_idx) {
		this.scr_idx = scr_idx;
	}

}
