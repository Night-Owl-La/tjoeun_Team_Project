package dao;

import java.util.List;

import vo.MovielistVo;

public interface MovielistDao {
	
	// CRUD
	List<MovielistVo> selectList();
	MovielistVo selectOne(int idx);
	
	int insert(MovielistVo vo);
	int update(MovielistVo vo);
	int delete(int idx);
	
}
