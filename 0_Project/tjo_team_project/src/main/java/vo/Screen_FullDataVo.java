package vo;

public class Screen_FullDataVo {
	String DOCID;
	String screen_regdata_movietitle;
	String theater_name;
	String theater_tel;
	String theater_area;
	String theater_location;
	int screen_id;
	int screen_classification;
	int screen_seat_total_amount;
	String screen_schedule_date;
	String screen_schedule_time; 

	public String getDOCID() {
		return DOCID;
	}

	public void setDOCID(String dOCID) {
		DOCID = dOCID;
	}

	public String getScreen_regdata_movietitle() {
		return screen_regdata_movietitle;
	}

	public void setScreen_regdata_movietitle(String screen_regdata_movietitle) {
		this.screen_regdata_movietitle = screen_regdata_movietitle;
	}

	public String getTheater_name() {
		return theater_name;
	}

	public void setTheater_name(String theater_name) {
		this.theater_name = theater_name;
	}

	public String getTheater_tel() {
		return theater_tel;
	}

	public void setTheater_tel(String theater_tel) {
		this.theater_tel = theater_tel;
	}

	public String getTheater_area() {
		return theater_area;
	}

	public void setTheater_area(String theater_area) {
		this.theater_area = theater_area;
	}

	public String getTheater_location() {
		return theater_location;
	}

	public void setTheater_location(String theater_location) {
		this.theater_location = theater_location;
	}

	public int getScreen_id() {
		return screen_id;
	}

	public void setScreen_id(int screen_id) {
		this.screen_id = screen_id;
	}

	public int getScreen_classification() {
		return screen_classification;
	}

	public void setScreen_classification(int screen_classification) {
		this.screen_classification = screen_classification;
	}

	public int getScreen_seat_total_amount() {
		return screen_seat_total_amount;
	}

	public void setScreen_seat_total_amount(int screen_seat_total_amount) {
		this.screen_seat_total_amount = screen_seat_total_amount;
	}
	
	public String getScreen_schedule_date() {
		return screen_schedule_date;
	}

	public void setScreen_schedule_date(String screen_schedule_date) {
		this.screen_schedule_date = screen_schedule_date;
	}

	public String getScreen_schedule_time() {
		return screen_schedule_time;
	}

	public void setScreen_schedule_time(String screen_schedule_time) {
		this.screen_schedule_time = screen_schedule_time;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder();
		sb.append(DOCID);
		sb.append("||");
		sb.append(screen_regdata_movietitle);
		sb.append("||");
		sb.append(theater_name);
		sb.append("||");
		sb.append(theater_tel);
		sb.append("||");
		sb.append(theater_area);
		sb.append("||");
		sb.append(theater_location);
		sb.append("||");
		sb.append(screen_id);
		sb.append("||");
		sb.append(screen_classification);
		sb.append("||");
		sb.append(screen_seat_total_amount);
		sb.append("||");
		sb.append(screen_schedule_date);
		sb.append("||");
		sb.append(screen_schedule_time);

		return sb.toString();
	}

}