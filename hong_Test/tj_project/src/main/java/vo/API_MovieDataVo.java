package vo;

import java.util.List;

import com.google.gson.annotations.SerializedName;

public class API_MovieDataVo {
	String DOCID;

	// ��ȭ ��� ID.
	String movieId;
	// ��ȭ ��� SEQ.
	String movieSeq;

	// ��ȭ ����.
	String title;
	String titleEng;
	String TitleOrg;
	String titleEtc;

	// ���� �⵵.
	String prodYear;
	// ���� ����.
	String nation;
	// ���� ȸ��.
	String company;
	// ���.
	String plot;

	// ���� ����.
	String ratedYn;
	// ��ǥ������
	String repRatDate;
	// ��ǥ������
	String repRlsDate;
	// �󿵽ð�.
	String runtime;
	// ��ǥ �������.
	String ratingGrade;
	// �帣.
	String genre;
	// �˻� Ű����.
	String Keywords;

	// ����� ������ �̹��� url.
	String posters;

	// ���� ����� ������ �̹��� ����Ʈ.
	List<String> posterList;

	// ����� ��ƿ�� �̹��� url.
	@SerializedName("stlls")
	String stills;

	// ���� ����� ��ƿ�� �̹��� ����Ʈ.
	List<String> stillList;

	// ���� ����.
	String openThtr;
	// ��������.
	String screenArea;
	// ��ũ����.
	String screenCnt;
	// ���� �����.
	String salesAcc;
	// �������� �ο�.
	String audiAcc;
	// ��ó.
	String statSouce;
	// �����ͱ�� ������.
	String statDate;
	// ������.
	String themeSong;
	// ���԰�.
	String soundtrack;
	// �Կ����.
	String fLocation;
	// ����� ��ȭ�� ���󳻿�.
	String Awards1;

	// ���� ����� ��ȭ�� ���󳻿�.
	List<String> award1List;

	// ���󳻿� ��Ÿ����.
	String Awards2;
	// ��ȭ���� �����.
	String regDate;
	// ���� ������.
	String modDate;
	// ISAN�ڵ�.
	String isanCode;

	// ---------��üŸ�� ������.----------------

	// ���� ����Ʈ
	List directorList;
	// ��� ����Ʈ.
	List actorList;
	// �������� ����Ʈ.
	List ratingList;
	// ���� ����Ʈ.
	List staffList;

	public List<String> getStillList() {
		return stillList;
	}

	public void setStillList(List<String> stillList) {
		this.stillList = stillList;
	}

	public List<String> getAward1List() {
		return award1List;
	}

	public void setAward1List(List<String> award1List) {
		this.award1List = award1List;
	}

	public String getStills() {
		return stills;
	}

	public void setStills(String stills) {
		this.stills = stills;
	}

	public List<String> getPosterList() {
		return posterList;
	}

	public void setPosterList(List<String> posterList) {
		this.posterList = posterList;
	}

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

	// ---------�Ϲ� ������ get/set----------------

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

	public String getRepRatDate() {
		return repRatDate;
	}

	public void setRepRatDate(String repRatDate) {
		this.repRatDate = repRatDate;
	}

	public String getRatingGrade() {
		return ratingGrade;
	}

	public void setRatingGrade(String ratingGrade) {
		this.ratingGrade = ratingGrade;
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

	public String getRatedYn() {
		return ratedYn;
	}

	public void setRatedYn(String ratedYn) {
		this.ratedYn = ratedYn;
	}

	public String getRepRlsDate() {
		return repRlsDate;
	}

	public void setRepRlsDate(String repRlsDate) {
		this.repRlsDate = repRlsDate;
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
