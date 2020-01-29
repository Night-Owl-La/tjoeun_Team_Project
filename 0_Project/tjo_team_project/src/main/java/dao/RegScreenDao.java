package dao;

import java.util.List;

import vo.RegScreenVo;

public interface RegScreenDao {
	List<RegScreenVo> selectList();
	int insert(RegScreenVo vo);
	int update();
	int delete();
}
