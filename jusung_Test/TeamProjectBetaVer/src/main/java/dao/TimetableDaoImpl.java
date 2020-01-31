package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.TimetableVo;

@Repository("timetable_dao")
public class TimetableDaoImpl implements TimetableDao {
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<TimetableVo> timetable_selectList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("timetable.timetable_list");
	}

	@Override
	public TimetableVo timetable_selectOne(int tht_idx) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int timetable_insert(TimetableVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int timetable_update(TimetableVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int timetable_delete(int tht_idx) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
