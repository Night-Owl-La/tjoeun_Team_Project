package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.NoticeVo;

@Repository("noticeDao")
public class NoticeDao_Impl implements NoticeDao {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<NoticeVo> notice_selectList() {
		return sqlSession.selectList("notice.notice_List");
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
