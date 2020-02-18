package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.Screen_FullDataVo;
import vo.Screen_RegdataVo;
import vo.Screen_ScheduleVo;
import vo.ScreenVo;

@Repository("screenDao")
public class ScreenDao_Impl implements ScreenDao {

	@Autowired
	SqlSession sqlSession;

	@Override
	public List<ScreenVo> selectList_Screen() {
		return sqlSession.selectList("screen.list_Screen");
	}

	@Override
	public List<ScreenVo> selectList_Screen(int theater_idx) {
		return sqlSession.selectList("screen.list_Screen_Theater_idx", theater_idx);
	}

	@Override
	public List<Screen_RegdataVo> selectList_Regdata() {
		return sqlSession.selectList("screen.list_Screen_Regdata");
	}

	@Override
	public Screen_RegdataVo selectOne_Regdata(Screen_RegdataVo regdataVo) {
		return sqlSession.selectOne("screen.One_Screen_Regdata_DOCID_Screen_idx", regdataVo);
	}

	@Override
	public int insert_Regdata(Screen_RegdataVo regdataVo) {
		return sqlSession.insert("screen.insert_Screen_Regdata", regdataVo);
	}

	@Override
	public int insert_Schedule(Screen_ScheduleVo scheduleVo) {
		return sqlSession.insert("screen.insert_Screen_Schedule", scheduleVo);
	}

	@Override
	public List<Screen_FullDataVo> selectList_FullData() {
		return sqlSession.selectList("screen.list_Screen_FullData");
	}

	@Override
	public List<Screen_FullDataVo> selectOne_FullData(String DOCID) {
		return sqlSession.selectList("screen.one_Screen_FullData", DOCID);
	}

	@Override
	public List<Screen_FullDataVo> selectList_FullData(Screen_FullDataVo vo) {
		return sqlSession.selectList("screen.list_Screen_FullData_DOCID_AND_DATE", vo);
	}

}
