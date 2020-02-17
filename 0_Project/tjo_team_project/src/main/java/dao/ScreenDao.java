package dao;

import java.util.List;

import vo.Screen_FullDataVo;
import vo.Screen_RegdataVo;
import vo.Screen_ScheduleVo;
import vo.ScreenVo;

public interface ScreenDao {
	List<ScreenVo> selectList_Screen();
	List<ScreenVo> selectList_Screen(int theater_idx);
	
	List<Screen_RegdataVo> selectList_Regdata();
	Screen_RegdataVo selectOne_Regdata(Screen_RegdataVo regdataVo);
	int insert_Regdata(Screen_RegdataVo regdataVo);
	
	int insert_Schedule(Screen_ScheduleVo scheduleVo);
	
	List<Screen_FullDataVo> selectList_FullData();
	List<Screen_FullDataVo> selectOne_FullData(String DOCID);
}
