package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.ScreenRegInfoVo;

@Repository("screenRegInfoDao")
public class ScreenRegInfoDao_Impl implements ScreenRegInfoDao {
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<ScreenRegInfoVo> selectList() {
		return sqlSession.selectList("screenRegInfo.screenRegInfo_List");
	}

	@Override
	public ScreenRegInfoVo selectOne_DOCID(String DOCID) {
		return sqlSession.selectOne("screenRegInfo.screenRegInfo_One", DOCID);
	}

	@Override
	public int insert(ScreenRegInfoVo vo) {
		return sqlSession.insert("screenRegInfo.screenRegInfo_Insert", vo);
	}

	@Override
	public int update(ScreenRegInfoVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int DOCID) {
		return sqlSession.delete("screenRegInfo.screenRegInfo_Delete", DOCID);
	}

}
