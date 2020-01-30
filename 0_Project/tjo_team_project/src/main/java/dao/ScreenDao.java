package dao;

import java.util.List;

import vo.ScreenVo;

public interface ScreenDao {

	List<ScreenVo> selectList();
	ScreenVo selectOne_ScrIdx(int scr_idx);
	ScreenVo selectOne_ThtIdx(int tht_idx);
	ScreenVo selectOne_DOCID(String DOCID);
	int insert(ScreenVo vo);
	int update(ScreenVo vo);
	int delete(int scr_idx);
}
