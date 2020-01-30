package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.ScreenVo;

@Repository("screenDao")
public class ScreenDao_Impl implements ScreenDao {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<ScreenVo> selectList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ScreenVo selectOne_ScrIdx(int scr_idx) {
		return sqlSession.selectOne("screen.screen_One_scr_idx", scr_idx);
	}
	
	@Override
	public ScreenVo selectOne_ThtIdx(int tht_idx) {
		return sqlSession.selectOne("screen.screen_One_tht_idx", tht_idx);
	}
	
	@Override
	public ScreenVo selectOne_DOCID(String DOCID) {
		return sqlSession.selectOne("screen.screen_One_DOCID", DOCID);
	}

	@Override
	public int insert(ScreenVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(ScreenVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int scr_idx) {
		// TODO Auto-generated method stub
		return 0;
	}

}
