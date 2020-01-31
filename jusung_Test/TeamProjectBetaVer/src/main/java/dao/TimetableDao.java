package dao;

import java.util.List;

import vo.TimetableVo;

public interface TimetableDao {
	
	List<TimetableVo> timetable_selectList();
	TimetableVo timetable_selectOne(int tht_idx);
	
	int timetable_insert(TimetableVo vo);
	int timetable_update(TimetableVo vo);
	int timetable_delete(int tht_idx);
	
}
