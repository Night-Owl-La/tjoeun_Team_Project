package vo;

public class MovielistVo {
	
	int idx, user_idx;
	
	String ml_title;
	String ml_poster;
	String ml_plot;
	String ml_directorList;
	String ml_actorList;
	String ml_runtime;
	String ml_ratingGrade;
	String ml_prodYear;
	String ml_company;
	
	public MovielistVo() {
		
	}
	
	// UPDATE
	public MovielistVo(int idx, String ml_title, String ml_poster, String ml_plot,
				String ml_directorList, String ml_actorList, String ml_runtime,
				String ml_ratingGrade, String ml_prodYear, String ml_company) {
		super();
		this.idx = idx;
		this.ml_title = ml_title;
		this.ml_poster = ml_poster;
		this.ml_plot = ml_plot;
		this.ml_directorList = ml_directorList;
		this.ml_actorList = ml_actorList;
		this.ml_runtime = ml_runtime;
		this.ml_ratingGrade = ml_ratingGrade;
		this.ml_prodYear = ml_prodYear;
		this.ml_company = ml_company;
	}
	
	
	public int getIdx() {
		return idx;
	}


	public void setIdx(int idx) {
		this.idx = idx;
	}

	public int getUser_idx() {
		return user_idx;
	}

	public void setUser_idx(int user_idx) {
		this.user_idx = user_idx;
	}

	public String getMl_title() {
		return ml_title;
	}

	public void setMl_title(String ml_title) {
		this.ml_title = ml_title;
	}

	public String getMl_poster() {
		return ml_poster;
	}

	public void setMl_poster(String ml_poster) {
		this.ml_poster = ml_poster;
	}

	public String getMl_plot() {
		return ml_plot;
	}

	public void setMl_plot(String ml_plot) {
		this.ml_plot = ml_plot;
	}

	public String getMl_directorList() {
		return ml_directorList;
	}

	public void setMl_directorList(String ml_directorList) {
		this.ml_directorList = ml_directorList;
	}

	public String getMl_actorList() {
		return ml_actorList;
	}

	public void setMl_actorList(String ml_actorList) {
		this.ml_actorList = ml_actorList;
	}

	public String getMl_runtime() {
		return ml_runtime;
	}

	public void setMl_runtime(String ml_runtime) {
		this.ml_runtime = ml_runtime;
	}

	public String getMl_ratingGrade() {
		return ml_ratingGrade;
	}

	public void setMl_ratingGrade(String ml_ratingGrade) {
		this.ml_ratingGrade = ml_ratingGrade;
	}

	public String getMl_prodYear() {
		return ml_prodYear;
	}

	public void setMl_prodYear(String ml_prodYear) {
		this.ml_prodYear = ml_prodYear;
	}

	public String getMl_company() {
		return ml_company;
	}

	public void setMl_company(String ml_company) {
		this.ml_company = ml_company;
	}
	
}
