package dao;

import java.util.List;

import vo.ScreenRegInfoVo;

public interface ScreenRegInfoDao {
	List<ScreenRegInfoVo> selectList();
	ScreenRegInfoVo selectOne_DOCID(String DOCID);
	int insert(ScreenRegInfoVo vo);
	int update(ScreenRegInfoVo vo);
	int delete(int DOCID);

}
