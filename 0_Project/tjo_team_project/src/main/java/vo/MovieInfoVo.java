package vo;

import java.util.List;

public class MovieInfo_Vo {
	String DOCID;

	// 영화 등록 ID.
	String movieId;
	// 영화 등록 SEQ.
	String movieSeq;

	// 영화 제목.
	String title;
	String titleEng;
	String TitleOrg;
	String titleEtc;

	// 제작 년도.
	String prodYear;

	// 제작 정보.
	String nation;
	String company;

	// 요약.
	String plot;
	// 상영시간
	String runtime;
	// 장르.
	String genre;
	// 검색 키워드.
	String Keywords;
	// 포스터 이미지 url.
	String posters;
	// 스틸컷 이미지 url.
	String stils;
	// 개봉 극장.
	String openThtr;
	// 관람지역.
	String screenArea;
	// 스크린수.
	String screenCnt;
	// 누적 매출액.
	String salesAcc;
	// 누적관람 인원.
	String audiAcc;
	// 출처.
	String statSouce;
	// 데이터기록 기준일.
	String statDate;
	// 주제곡.
	String themeSong;
	// 삽입곡.
	String soundtrack;
	// 촬영장소.
	String fLocation;
	// 영화제 수상내역.
	String Awards1;
	// 수상내역 기타사항.
	String Awards2;
	// 영화정보 등록일.
	String regDate;
	// 최종 수정일.
	String modDate;
	// ISAN코드.
	String isanCode;

	// ---------객체타입 데이터.----------------

	// 감독 리스트
	List directorList;
	// 배우 리스트.
	List actorList;
	// 심의정보 리스트.
	List ratingList;
	// 스텝 리스트.
	List staffList;

	public List getDirectorList() {
		return directorList;
	}

	public void setDirectorList(List directorList) {
		this.directorList = directorList;
	}


	public List getActorList() {
		return actorList;
	}

	public void setActorList(List actorList) {
		this.actorList = actorList;
	}


	public List getRatingList() {
		return ratingList;
	}

	public void setRatingList(List ratingList) {
		this.ratingList = ratingList;
	}


	public List getStaffList() {
		return staffList;
	}

	public void setStaffList(List staffList) {
		this.staffList = staffList;
	}

	// ---------일반 데이터 get/set----------------

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

	public String getProdYear() {
		return prodYear;
	}

	public void setProdYear(String prodYear) {
		this.prodYear = prodYear;
	}

	public String getRuntime() {
		return runtime;
	}

	public void setRuntime(String runtime) {
		this.runtime = runtime;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public String getModDate() {
		return modDate;
	}

	public void setModDate(String modDate) {
		this.modDate = modDate;
	}

	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getPlot() {
		return plot;
	}

	public void setPlot(String plot) {
		this.plot = plot;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getKeywords() {
		return Keywords;
	}

	public void setKeywords(String keywords) {
		Keywords = keywords;
	}

	public String getPosters() {
		return posters;
	}

	public void setPosters(String posters) {
		this.posters = posters;
	}

	public String getStils() {
		return stils;
	}

	public void setStils(String stils) {
		this.stils = stils;
	}

	public String getOpenThtr() {
		return openThtr;
	}

	public void setOpenThtr(String openThtr) {
		this.openThtr = openThtr;
	}

	public String getScreenArea() {
		return screenArea;
	}

	public void setScreenArea(String screenArea) {
		this.screenArea = screenArea;
	}

	public String getScreenCnt() {
		return screenCnt;
	}

	public void setScreenCnt(String screenCnt) {
		this.screenCnt = screenCnt;
	}

	public String getSalesAcc() {
		return salesAcc;
	}

	public void setSalesAcc(String salesAcc) {
		this.salesAcc = salesAcc;
	}

	public String getAudiAcc() {
		return audiAcc;
	}

	public void setAudiAcc(String audiAcc) {
		this.audiAcc = audiAcc;
	}

	public String getStatSouce() {
		return statSouce;
	}

	public void setStatSouce(String statSouce) {
		this.statSouce = statSouce;
	}

	public String getStatDate() {
		return statDate;
	}

	public void setStatDate(String statDate) {
		this.statDate = statDate;
	}

	public String getThemeSong() {
		return themeSong;
	}

	public void setThemeSong(String themeSong) {
		this.themeSong = themeSong;
	}

	public String getSoundtrack() {
		return soundtrack;
	}

	public void setSoundtrack(String soundtrack) {
		this.soundtrack = soundtrack;
	}

	public String getfLocation() {
		return fLocation;
	}

	public void setfLocation(String fLocation) {
		this.fLocation = fLocation;
	}

	public String getAwards1() {
		return Awards1;
	}

	public void setAwards1(String awards1) {
		Awards1 = awards1;
	}

	public String getAwards2() {
		return Awards2;
	}

	public void setAwards2(String awards2) {
		Awards2 = awards2;
	}

	public String getIsanCode() {
		return isanCode;
	}

	public void setIsanCode(String isanCode) {
		this.isanCode = isanCode;
	}

}
