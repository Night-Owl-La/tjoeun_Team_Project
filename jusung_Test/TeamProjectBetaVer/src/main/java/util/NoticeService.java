package util;

import java.util.List;

import vo.NoticeVo;

public interface NoticeService {
	List<NoticeVo> notice_selectList();
	NoticeVo notice_selectOne(int notice_idx);
	NoticeVo notice_selectOne(String notice_title);
	int notice_Insert(NoticeVo vo);
	int notice_Update(NoticeVo vo);
	int notice_Delete(int notice_idx);
}
