package dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.ScreenSeatVo;
import vo.ScreenSeat_BK_Vo;

@Repository("screenSeatDao")
public class ScreenSeatDao_Impl implements ScreenSeatDao {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<ScreenSeatVo> selectList() {
		return sqlSession.selectList("screen_seat.screen_seat_List");
	}

	@Override
	public ScreenSeatVo selectOne_ScrIdx(int scr_idx) {
		return sqlSession.selectOne("screen_seat.screen_seat_One_scr_idx", scr_idx);
	}
	
	@Override
	public Map<String, Integer> selectOne_ScrIdx_Map(int scr_idx) {
		Map map = sqlSession.selectOne("screen_seat.screen_seat_One_scr_idx_Map", scr_idx);
		map.remove("SCR_IDX");
		return map;
	}

	@Override
	public int update(ScreenSeat_BK_Vo vo) {
		return sqlSession.update("screen_seat.screen_seat_Update", vo);
	}

}
