package tjo_team_project;

import static org.junit.Assert.fail;

import java.util.List;

import org.junit.Test;

import util.API_MovieData_DB;
import vo.API_MovieDataVo;

public class test {

	@Test
	public void test() throws Exception {
		//API_MovieData_DB.searchLatestMovieList();
		List<API_MovieDataVo> list = API_MovieData_DB.searchLatestMovieList();
		
		for (API_MovieDataVo api_MovieDataVo : list) {
			
			System.out.println(api_MovieDataVo.getTitle());
		}
		fail("Not yet implemented");
	}

}