package dao;

import java.util.List;

import vo.ScreenVo;

public interface ScreenDao {

	List<ScreenVo> selectList();
	ScreenVo selectOne(int scr_idx);
	int insert(ScreenVo vo);
	int update(ScreenVo vo);
	int delete(int scr_idx);
}
