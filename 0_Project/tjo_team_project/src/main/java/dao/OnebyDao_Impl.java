package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.OnebyVo;

@Repository("onebyDao")
public class OnebyDao_Impl implements OnebyDao {
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<OnebyVo> oneby_selectList(int user_idx) {
		return sqlSession.selectList("oneby.oneby_List", user_idx);
	}

	@Override
	public OnebyVo oneby_selectOne(String oneby_category) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int oneby_Insert(OnebyVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int oneby_Update(OnebyVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int oneby_Delete(int oneby_idx) {
		// TODO Auto-generated method stub
		return 0;
	}

}
