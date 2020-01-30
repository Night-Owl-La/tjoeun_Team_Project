package dao;

import java.util.List;

import vo.TheaterVo;

public interface TheaterDao {
	List<TheaterVo> selectList();
	TheaterVo selectOne_ThtIdx(int tht_idx);
	int insert(TheaterVo vo);
	int update(TheaterVo vo);
	int delete(int tht_idx);
}
