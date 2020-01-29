package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.RegScreenVo;

@Repository("regScreenDao")
public class RegScreenDao_Impl implements RegScreenDao {
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<RegScreenVo> selectList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(RegScreenVo vo) {
		return sqlSession.insert("regScreen.regScreen_Insert", vo);
	}

	@Override
	public int update() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete() {
		// TODO Auto-generated method stub
		return 0;
	}

}
