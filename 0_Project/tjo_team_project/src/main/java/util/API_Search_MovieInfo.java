package util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import vo.MovieInfo_Vo;

public class API_Search_MovieInfo {

	// 인증키
	static final String KEY = "E2004FE64ZOE1FAW3JUW";

	public List<MovieInfo_Vo> searchMovieList(String search_Key, String search_Value) throws IOException {

		// 0. URL 빌드.
		StringBuilder urlBuilder = getRequestUrl(search_Key, search_Value);

		// 1. URL 커넥션 얻기.
		HttpURLConnection conn = getUrlConnect(urlBuilder);

		// 2. URL로부터 전체 JsonData 가져오기.
		String jsonData = getUrl_JsonData(conn);

		// Connection close.
		conn.disconnect();

		// 3. GSON 파싱후 결과 리스트 받아오기.
		List<MovieInfo_Vo> movieList = gsonParssing(jsonData);

		// 4. 결과 리스트 반환.
		return movieList;
	}

	private StringBuilder getRequestUrl(String search_Key, String search_Value) throws UnsupportedEncodingException {
		
		StringBuilder urlBuilder;

		// ------ 필수값 -------
		// 요청 URL 주소
		urlBuilder = new StringBuilder(	"http://api.koreafilm.or.kr/openapi-data2/wisenut/search_api/search_json.jsp?collection=kmdb_new");

		// 인증키
		urlBuilder.append("&" + "ServiceKey=" + KEY);

		// 상세 정보 불러오기 여부.
		urlBuilder.append("&" + "detail" + "=" + "Y");

		// ------ 검색 값 -------
		urlBuilder.append("&" + URLEncoder.encode(search_Key, "UTF-8") + "=" + URLEncoder.encode(search_Value, "UTF-8"));

		return urlBuilder;
	}

	private HttpURLConnection getUrlConnect(StringBuilder urlBuilder) throws IOException {

		// 요청 URL 완성.
		URL url = new URL(urlBuilder.toString());

		// url check.
		System.out.println(url);

		// URL에서 커넥션 얻기.
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Content-type", "application/json");

		// 응답코드 확인.
		System.out.println("Response code: " + conn.getResponseCode());

		return conn;
	}

	private String getUrl_JsonData(HttpURLConnection conn) throws IOException {

		BufferedReader rd;

		if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
			rd = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));
			System.out.println("success");
		} else {
			rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
			System.out.println("error");
		}

		StringBuilder sb = new StringBuilder();

		String line;

		while ((line = rd.readLine()) != null) {
			sb.append(line);
		}

		String result_JsonData = sb.toString();

		rd.close();

		return result_JsonData;
	}

	private List gsonParssing(String jsonData) {

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
		List<MovieInfo_Vo> movieList = new ArrayList<MovieInfo_Vo>();

		// 파싱.
		for (Object resultObject : resultArray) {

			// ---------Vo에 객체가 아닌 정보 삽입.-----------
			String test = gson.toJson(resultObject);
			MovieInfo_Vo movieVo = gson.fromJson(test, MovieInfo_Vo.class);

			// -------------객체타입 처리.---------------
			// Result Map 얻기.
			Map resultMap = (Map) resultObject;

			// director 정보 삽입.
			List directorList = (List) resultMap.get("director");
			movieVo.setDirectorList(directorList);

			// actor 정보 삽입.
			List actorList = (List) resultMap.get("actor");
			movieVo.setActorList(actorList);

			// 심의 정보 삽입.
			List ratingList = (List) resultMap.get("rating");
			movieVo.setRatingList(ratingList);

			// 스텝 정보 삽입.
			List staffList = (List) resultMap.get("staff");
			movieVo.setStaffList(staffList);

			// 최종으로 리턴될 결과 리스트에 Vo 추가.
			movieList.add(movieVo);
		}
		return movieList;

	}

}