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
		return sqlSession.selectList("theater.theaterList_All");
	}

}
