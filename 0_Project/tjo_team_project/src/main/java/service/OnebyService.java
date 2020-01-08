package service;

import java.util.List;

import vo.OnebyVo;

public interface OnebyService {
	public List<OnebyVo> oneby_selectList(int user_idx);
	public OnebyVo oneby_selectOne(String oneby_category);
	public int oneby_Insert(OnebyVo vo);
	public int oneby_Update(OnebyVo vo);
	public int oneby_Delete(int oneby_idx);
}
