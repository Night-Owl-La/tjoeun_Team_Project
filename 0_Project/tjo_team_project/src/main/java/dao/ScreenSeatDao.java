package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import vo.ScreenSeatVo;
import vo.ScreenSeat_BK_Vo;

public interface ScreenSeatDao {
	List<ScreenSeatVo> selectList();
	ScreenSeatVo selectOne_ScrIdx(int scr_idx);
	Map<String, Integer> selectOne_ScrIdx_Map(int scr_idx);
	int update(ScreenSeat_BK_Vo vo);
}
