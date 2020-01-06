package util;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import vo.MovieInfo_Vo;

@Controller
public class API_TestController {
	
	// 인증키
	static final String KEY = "E2004FE64ZOE1FAW3JUW";

	StringBuilder urlBuilder;

	public API_TestController() {

		// URL
		urlBuilder = new StringBuilder("http://api.koreafilm.or.kr/openapi-data2/wisenut/search_api/search_json.jsp?collection=kmdb_new&");
		
		}

	@RequestMapping("test.do")
	public void request_Test() throws Exception {

		// Service Key
		//국가
		urlBuilder.append(URLEncoder.encode("nation=대한민국", "UTF-8"));
		
		//인증키
		urlBuilder.append("&" + "ServiceKey="+KEY);
		
		//영화 이름
		urlBuilder.append("&" + URLEncoder.encode("title", "UTF-8") + "=" + URLEncoder.encode("겨울왕국", "UTF-8"));
		
		// 상영 년도
//		urlBuilder.append("&" + URLEncoder.encode("val001", "UTF-8") + "=" + URLEncoder.encode("2020", "UTF-8"));
		// 상영 월
//		urlBuilder.append("&" + URLEncoder.encode("val002", "UTF-8") + "=" + URLEncoder.encode("01", "UTF-8"));

		URL url = new URL(urlBuilder.toString());
		
		//url check.
		System.out.println(url);
		
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Content-type", "application/json");

		System.out.println("Response code: " + conn.getResponseCode());
		
		BufferedReader rd;

		if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
			rd = new BufferedReader(new InputStreamReader(conn.getInputStream(),"utf-8"));
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

		rd.close();
		conn.disconnect();
		
		System.out.println("-------------sb.toString --------------------");
		System.out.println(sb.toString());
		System.out.println("---------------------------------");
		System.out.println();
		
		//GSON Parser
		Gson gson = new GsonBuilder().create();
		
		JsonObject json_Object = new JsonParser().parse(sb.toString()).getAsJsonObject();
		// "Data"
		JsonElement json_Data_Array = json_Object.get("Data").getAsJsonArray().get(0);
		
		// "Result"
		JsonArray json_Result_Array =  json_Data_Array.getAsJsonObject().get("Result").getAsJsonArray();
		JsonElement json_Result = json_Data_Array.getAsJsonObject().get("Result").getAsJsonArray().get(0);
		// "director"
		JsonArray json_Director = json_Result.getAsJsonObject().get("director").getAsJsonArray();
		JsonElement json_Director_Array = json_Director.get(0);
		
		JsonArray json_Actor = json_Result.getAsJsonObject().get("actor").getAsJsonArray();
		JsonElement json_Actor_Array = json_Actor.get(0);
		
		JsonArray json_Rating = json_Result.getAsJsonObject().get("rating").getAsJsonArray();
		JsonElement json_Rating_Array = json_Rating.get(0);
		
		System.out.println(json_Rating_Array);
		
		
		//MovieInfo_Vo[] vo = gson.fromJson(json_Result_Array, MovieInfo_Vo[].class);
		
		
		
		//MovieInfo_Vo result_vo = gson.fromJson(data_Array, MovieInfo_Vo.class);
		
		//System.out.println(result_vo.getDOCID());
		//gson.fromJson(data_Array);
		//JsonArray result_Array = data_Array.getAsJsonObject().get("Result").getAsJsonArray();
		
		//MovieInfo_Vo vo = gson.fromJson(result_Array, MovieInfo_Vo.class);
		
		
		
		System.out.println("-------------vo-------------");
		System.out.println("---------------------------------");
		
		
		
		
		
		
		
	}
}