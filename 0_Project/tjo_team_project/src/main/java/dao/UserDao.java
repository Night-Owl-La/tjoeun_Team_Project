package dao;

import java.util.List;

import vo.UserVo;

public interface UserDao {
	
	public UserVo selectOne(String user_id); 
 	
	public int insert(UserVo vo);
	
	public int delete(int user_idx);
	
	public UserVo selectOne(int user_idx);
	
	public int update(UserVo vo);
	
	public List<UserVo> selectList();
}
