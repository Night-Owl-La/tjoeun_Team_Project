package dao;

import java.util.List;

import vo.ScreenTicketVo;

public interface ScreenTicketDao {
	List<ScreenTicketVo> selectList();
	ScreenTicketVo selectOne_ScrIdx(int scr_idx);
	int insert(ScreenTicketVo vo);
	int update(ScreenTicketVo vo);
	int delete(int scr_idx);
}
