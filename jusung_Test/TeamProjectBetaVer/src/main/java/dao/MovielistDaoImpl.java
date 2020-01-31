package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.MovielistVo;

@Repository("movielist_dao")
public class MovielistDaoImpl implements MovielistDao {
	
	// SETTER INJECTION
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<MovielistVo> selectList() {
		
		return sqlSession.selectList("movielist.movielist_list");
	}

	@Override
	public MovielistVo selectOne(int idx) {
		
		return sqlSession.selectOne("movielist.movielist_one", idx);
	}

	@Override
	public int insert(MovielistVo vo) {
		
		return sqlSession.insert("movielist.movielist_insert", vo);
	}

	@Override
	public int update(MovielistVo vo) {
		
		return sqlSession.update("movielist.movielist_update", vo);
	}

	@Override
	public int delete(int idx) {
		
		return sqlSession.delete("movielist.movielist_delete", idx);
	}

}
