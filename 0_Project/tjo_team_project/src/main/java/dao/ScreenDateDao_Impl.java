package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.ScreenDateVo;

@Repository("screenDateDao")
public class ScreenDateDao_Impl implements ScreenDateDao {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<ScreenDateVo> selectList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ScreenDateVo selectOne(String DOCID) {
		return sqlSession.selectOne("screenDate.screenDate_One", DOCID);
	}

	@Override
	public int insert(ScreenDateVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(ScreenDateVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int scr_idx) {
		// TODO Auto-generated method stub
		return 0;
	}

}
