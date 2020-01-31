package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.BookingDao;
import vo.BookingVo;

@Service("booking_service")
public class BookingServiceImpl implements BookingService {
	
	@Autowired
	public BookingDao booking_dao;

	@Override
	public List<BookingVo> selectList() {
		
		return booking_dao.selectList();
	}

	@Override
	public BookingVo selectOne(int bk_idx) {
		
		return null;
	}

	@Override
	public int insert(BookingVo vo) {
		
		return 0;
	}

	@Override
	public int update(BookingVo vo) {
		
		return 0;
	}

	@Override
	public int delete(int bk_idx) {
		
		return 0;
	}

}
