package service;

import java.util.List;

import vo.BookingVo;

public interface BookingService {
	
	public List<BookingVo> selectList();
	public BookingVo selectOne(int bk_idx);
	public int insert(BookingVo vo);
	public int update(BookingVo vo);
	public int delete(int bk_idx);
	
}
