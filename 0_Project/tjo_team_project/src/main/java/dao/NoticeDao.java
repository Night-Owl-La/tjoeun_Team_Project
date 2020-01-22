package dao;

import java.util.List;
import java.util.Map;

import vo.NoticeVo;

public interface NoticeDao {
	
	List<NoticeVo> notice_selectList();
	List<NoticeVo> notice_selectList(Map map);
	NoticeVo notice_selectOne(int notice_idx);
	NoticeVo notice_selectOne(String notice_title);
	int notice_selectRowTotal(Map selectOptionMap);
	int notice_Insert(NoticeVo vo);
	int notice_UpdateViewCount(NoticeVo noticeVo);
	int notice_Update(NoticeVo vo);
	int notice_Delete(int notice_idx);
	

}
