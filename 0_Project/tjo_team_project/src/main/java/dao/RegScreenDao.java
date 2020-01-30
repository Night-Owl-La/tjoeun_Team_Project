package dao;

import java.util.List;

import vo.RegScreenVo;

public interface RegScreenDao {
	List<RegScreenVo> selectList();
	RegScreenVo selectOne(String DCOID);
	int insert(RegScreenVo vo);
	int update();
	int delete();
}
