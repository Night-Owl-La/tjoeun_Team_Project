package dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.BookingVo;

@Repository("booking_dao")
public class BookingDaoImpl implements BookingDao {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<BookingVo> selectList() {
		
		return sqlSession.selectList("booking.booking_list");
	}

	@Override
	public List<BookingVo> selectList(Map map) {
		
		return sqlSession.selectList("booking.booking_condition_list", map);
	}
	
	@Override
	public BookingVo selectOne(String docid) {
		
		return sqlSession.selectOne("booking.booking_list_one", docid);
	}

	@Override
	public int insert(BookingVo vo) throws Exception {
		
		return sqlSession.insert("booking.booking_insert", vo);
	}

	@Override
	public int update(BookingVo vo) throws Exception {
		
		return sqlSession.update("booking.booking_update", vo);
	}

	@Override
	public int delete(int bk_idx) throws Exception {
		
		return sqlSession.delete("booking.booking_delete", bk_idx);
	}

	
}
