package vo;

import java.util.HashMap;
import java.util.Map;

import com.google.gson.annotations.SerializedName;

public class MovieInfo_Vo {
	String DOCID;
	String movieId;
	String movieSeq;
	String title;
	String titleEng;
	String TitleOrg;
	String titleEtc;
	int prodYear;
	
	Map director;

	public String getDOCID() {
		return DOCID;
	}

	public void setDOCID(String dOCID) {
		DOCID = dOCID;
	}

	public String getMovieId() {
		return movieId;
	}

	public void setMovieId(String movieId) {
		this.movieId = movieId;
	}

	public String getMovieSeq() {
		return movieSeq;
	}

	public void setMovieSeq(String movieSeq) {
		this.movieSeq = movieSeq;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTitleEng() {
		return titleEng;
	}

	public void setTitleEng(String titleEng) {
		this.titleEng = titleEng;
	}

	public String getTitleOrg() {
		return TitleOrg;
	}

	public void setTitleOrg(String titleOrg) {
		TitleOrg = titleOrg;
	}

	public String getTitleEtc() {
		return titleEtc;
	}

	public void setTitleEtc(String titleEtc) {
		this.titleEtc = titleEtc;
	}

	public int getProdYear() {
		return prodYear;
	}

	public void setProdYear(int prodYear) {
		this.prodYear = prodYear;
	}

	public Map getDirector() {
		return director;
	}

	public void setDirector(Map director) {
		this.director = director;
	}

}
