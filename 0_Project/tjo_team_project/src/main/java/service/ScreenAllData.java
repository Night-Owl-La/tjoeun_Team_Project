package service;

import java.util.List;

import vo.ScreenAllDataVo;

public interface ScreenAllData {
	List<ScreenAllDataVo> selectList();
	ScreenAllDataVo selectOne(int scr_idx);
	ScreenAllDataVo selectOne(String DOCID);
	ScreenAllDataVo selectOneByTheater(int tht_idx);
}