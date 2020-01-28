package dao;

import java.util.List;
import java.util.Map;

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
	public List<NoticeVo> notice_selectList(Map map) {
		return sqlSession.selectList("notice.notice_Condition_List", map);
	}

	@Override
	public NoticeVo notice_selectOne(int notice_idx) {
		return sqlSession.selectOne("notice.notice_List_Idx", notice_idx);
	}

	@Override
	public int notice_selectRowTotal(Map map) {
		return sqlSession.selectOne("notice.notice_RowTotal", map);
	}

	@Override
	public NoticeVo notice_selectOne(String notice_title) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int notice_Insert(NoticeVo vo) {
		return sqlSession.insert("notice.notice_insert", vo);
	}

	@Override
	public int notice_UpdateViewCount(NoticeVo noticeVo) {
		return sqlSession.update("notice.notice_UpdateViewCount", noticeVo);
	}

	@Override
	public int notice_Update(NoticeVo vo) {
		return sqlSession.update("notice.notice_Update", vo);
	}

	@Override
	public int notice_Delete(int notice_idx) {
		return sqlSession.delete("notice.notice_Delete", notice_idx);
	}

}
