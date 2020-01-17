package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.NoticeDao;
import vo.NoticeVo;

@Service("noticeService")
public class NoticeService_Impl implements NoticeService {

	@Autowired
	NoticeDao noticeDao;

	@Override
	public List<NoticeVo> notice_selectList() {
		return noticeDao.notice_selectList();
	}

	@Override
	public NoticeVo notice_selectOne(int notice_idx) {
		return noticeDao.notice_selectOne(notice_idx);
	}

	@Override
	public NoticeVo notice_selectOne(String notice_title) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int notice_Insert(NoticeVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int notice_Update(NoticeVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int notice_Delete(int notice_idx) {
		// TODO Auto-generated method stub
		return 0;
	}

}
