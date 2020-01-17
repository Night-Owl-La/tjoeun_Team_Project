package util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import vo.MovieInfoVo;

public class API_MovieInformation_DB {

	static final String url = "http://api.koreafilm.or.kr/openapi-data2/wisenut/search_api/search_json.jsp";

	public static List<MovieInfoVo> searchMovieList(String search_Key, String search_Value) throws IOException {

		// 0. URL 빌드.
		StringBuilder urlBuilder = getRequestUrl(search_Key, search_Value);

		// 1. URL 커넥션 얻기.
		HttpURLConnection conn = getUrlConnection(urlBuilder);

		// 2. URL로부터 전체 JsonData 가져오기.
		String jsonData = getUrlJsonData(conn);

		// Connection close.
		conn.disconnect();

		// 3. GSON 파싱후 결과 리스트 받아오기.
		List<MovieInfoVo> movieList = gsonParssing(jsonData);

		// 4. 결과 리스트 반환.
		return movieList;
	}

	private static StringBuilder getRequestUrl(String search_Key, String search_Value)
			throws UnsupportedEncodingException {

		StringBuilder urlBuilder;

		// ------ 필수값 -------
		// 요청 URL 주소
		urlBuilder = new StringBuilder(url);

		// 요청 DB
		urlBuilder.append("?collection=kmdb_new");

		// 인증키
		urlBuilder.append("&ServiceKey=" + OpenAPI_Key.MovieDB_Key.KEY);

		// 상세 정보 불러오기 여부.
		urlBuilder.append("&detail=Y");

		// 최대 검색수.
		urlBuilder.append("&listCount=10");

		// ------ 검색 값 -------
		urlBuilder.append("&" + URLEncoder.encode(search_Key, "UTF-8") + "=" + URLEncoder.encode(search_Value, "UTF-8"));

		return urlBuilder;
	}

	private static HttpURLConnection getUrlConnection(StringBuilder urlBuilder) throws IOException {

		// 요청 URL 완성.
		URL url = new URL(urlBuilder.toString());

		// url check.
		// System.out.println(url); // TODO

		// URL에서 커넥션 얻기.
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Content-type", "application/json");

		// 응답코드 확인.
		//System.out.println("Response code: " + conn.getResponseCode());

		return conn;
	}

	private static String getUrlJsonData(HttpURLConnection conn) throws IOException {

		// Connection에서 Json데이터를 긁어올 버퍼.
		BufferedReader rd;

		if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
			rd = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));
			//System.out.println("success");
		} else {
			rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
			//System.out.println("error");
		}

		// 문자열 빌더.
		StringBuilder sb = new StringBuilder();

		// 문자열 임시 저장 변수.
		String line;

		while ((line = rd.readLine()) != null) {
			sb.append(line);
		}

		// 결과 JSON 데이터.
		String jsonData = sb.toString();

		rd.close();

		return jsonData;
	}

	private static List gsonParssing(String jsonData) {

		// GSON Parser 생성.
		Gson gson = new GsonBuilder().create();

		// 단순 문자열에서 JSON Object로 파싱.
		JsonObject json_Object = new JsonParser().parse(jsonData).getAsJsonObject();

		// JSON Object에서 최상위 객체를 Map으로 얻어옴.
		Map json_Object_Map = gson.fromJson(json_Object, new HashMap().getClass());

		// 최상위 객체의 배열을 뜯음.
		List dataArray = (List) json_Object_Map.get("Data");

		// 최상의 객체의 배열 안의 실제 데이터 값 얻기.
		Map dataMap = (Map) dataArray.get(0);

		// Result 배열 얻기.
		List resultArray = (List) dataMap.get("Result");

		// 결과값이 파싱될 Vo 객체를 담는 리스트.
		List<MovieInfoVo> movieList = new ArrayList<MovieInfoVo>();

		// 파싱.
		for (Object resultObject : resultArray) {

			// ---------Vo에 객체가 아닌 정보 삽입.-----------
			MovieInfoVo movieVo = gson.fromJson(gson.toJson(resultObject).toString(), MovieInfoVo.class);

			// -------------객체타입 처리.---------------
			// Result Map 얻기.
			Map resultMap = (Map) resultObject;

			// director 정보 삽입.
			movieVo.setDirectorList((List) resultMap.get("director"));

			// actor 정보 삽입.
			movieVo.setActorList((List) resultMap.get("actor"));

			// 심의 정보 삽입.
			movieVo.setRatingList((List) resultMap.get("rating"));

			// 스텝 정보 삽입.
			movieVo.setStaffList((List) resultMap.get("staff"));

			// -------- 데이터 필터링. --------
			movieVo = dataFiltering(movieVo);

			// 최종으로 리턴될 결과 리스트에 Vo 추가.
			movieList.add(movieVo);
		}
		return movieList;
	}

	private static MovieInfoVo dataFiltering(MovieInfoVo movieVo) {
		// -- 제목 파싱. --
		String re_Title = movieVo.getTitle().replace("!HS ", "").replace(" !HE ", "");
		movieVo.setTitle(re_Title);

		// -- 관람등급 파싱. --
		Map ratingMap = (Map) movieVo.getRatingList().get(0);
		String ratingGrade = (String) ratingMap.get("ratingGrade");

		// 관람등급 문자 필터링.
		try {
			ratingGrade = ratingGrade.substring(0, ratingGrade.indexOf("|"));
		} catch (Exception e) {
			if (ratingGrade == "" || ratingGrade.isEmpty())
				ratingGrade = "-";
		}
		movieVo.setRatingGrade(ratingGrade);

		// -- 포스터 배열 파싱. --
		// 엘리먼트 분할.
		List<String> posterList = change_Bar_To_Space(movieVo.getPosters());
		movieVo.setPosterList(posterList);

		// -- 스틸컷 배열 파싱. --
		// 엘리먼트 분할.
		List<String> stillList = change_Bar_To_Space(movieVo.getStills());
		movieVo.setStillList(stillList);

		// -- 수상내역 배열 파싱. --
		// 엘리먼트 분할.
		List<String> award1List = change_Bar_To_Space(movieVo.getAwards1());
		movieVo.setAward1List(award1List);

		return movieVo;
	}

	// 덩어리진 값을 분할 저장해서 List로 돌려줌.
	private static List<String> change_Bar_To_Space(String lump) {
		// 값 배열을 분할해서 저장할 리스트.
		List<String> div_Array = new ArrayList<String>();
		// 값 필터링.
		lump = lump.replace("|", "###"); // 'ㅣ'값을 못읽는 케이스가 있어서 다른값으로 수정.
		// 주소 값이 여러개 인가?
		if (lump.indexOf("###") != -1) {
			div_Array = Arrays.asList(lump.split("###"));
		} else {
			div_Array = new ArrayList<String>();
			// 주소 값이 비어있나?
			if (lump.isEmpty() || lump == "") {
				div_Array.add("없음");
			} else {
				div_Array.add(lump);
			}
		}
		return div_Array;
	}

}