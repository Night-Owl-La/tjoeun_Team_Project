package dao;

import java.util.List;

import vo.ScreenDateVo;

public interface ScreenDateDao {
	List<ScreenDateVo> selectList();
	ScreenDateVo selectOne(String DOCID);
	int insert(ScreenDateVo vo);
	int update(ScreenDateVo vo);
	int delete(int scr_idx);
}
