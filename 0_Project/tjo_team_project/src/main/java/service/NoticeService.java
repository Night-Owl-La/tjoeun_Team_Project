package service;

import java.util.List;

import vo.NoticeVo;

public interface NoticeService {
	public List<NoticeVo> notice_selectList();
	public NoticeVo notice_selectOne(String notice_title);
	public int notice_Insert(NoticeVo vo);
	public int notice_Update(NoticeVo vo);
	public int notice_Delete(int notice_idx);
}
