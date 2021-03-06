package dao;

import java.util.List;

import vo.BookingVo;

public interface BookingDao {
	
	// CRUD
	List<BookingVo> selectList();
	
	BookingVo selectOne(String docid);
	
	int insert(BookingVo vo) throws Exception;
	int update(BookingVo vo) throws Exception;
	int delete(int bk_idx) throws Exception;
	
}
