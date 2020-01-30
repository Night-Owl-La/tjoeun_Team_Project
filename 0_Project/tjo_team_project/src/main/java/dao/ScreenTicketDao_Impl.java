package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.ScreenTicketVo;

@Repository("screenTicketDao")
public class ScreenTicketDao_Impl implements ScreenTicketDao {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<ScreenTicketVo> selectList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ScreenTicketVo selectOne_ScrIdx(int scr_idx) {
		return sqlSession.selectOne("screenTicket.screenTicket_One", scr_idx);
	}

	@Override
	public int insert(ScreenTicketVo vo) {
		return sqlSession.insert("screenTicket.screenTicket_Insert", vo);
	}

	@Override
	public int update(ScreenTicketVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int scr_idx) {
		return sqlSession.delete("screenTicket.screenTicket_Delete", scr_idx);
	}

}
