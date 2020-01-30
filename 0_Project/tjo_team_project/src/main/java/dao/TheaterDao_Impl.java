package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.TheaterVo;

@Repository("theaterDao")
public class TheaterDao_Impl implements TheaterDao {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<TheaterVo> selectList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public TheaterVo selectOne_ThtIdx(int tht_idx) {
		return sqlSession.selectOne("theater.theater_One_tht_idx", tht_idx);
	}

	@Override
	public int insert(TheaterVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(TheaterVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int tht_idx) {
		// TODO Auto-generated method stub
		return 0;
	}

}
