package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.UserVo;

@Repository("user_dao")
public class UserDaoImpl implements UserDao {
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public UserVo selectOne(int user_idx) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("user.user_one_idx", user_idx);
	}

	@Override
	public UserVo selectOne(String user_id) {
		// TODO Auto-generated method stub
		UserVo vo = null;
	
		vo = sqlSession.selectOne("user.user_one_id", user_id);
		
		return vo;
	}

	@Override
	public int insert(UserVo vo) {
		// TODO Auto-generated method stub
		int res = 0;
		
		res = sqlSession.insert("user.user_insert", vo);
		
		return res;
	}

	@Override
	public int update(UserVo vo) {
		// TODO Auto-generated method stub
		int res = 0;
		
		res = sqlSession.update("user.user_update", vo);
		
		return res;
	}

	@Override
	public int delete(int user_idx) {
		// TODO Auto-generated method stub
		int res = 0;
		
		res = sqlSession.delete("user.user_delete", user_idx);
		
		return res;
	}
	
	@Override
	public List<UserVo> selectList() {
		
		return sqlSession.selectList("user.user_list");
	}

}
