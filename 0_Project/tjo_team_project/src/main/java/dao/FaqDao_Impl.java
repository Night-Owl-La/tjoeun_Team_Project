package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.FaqVo;

@Repository("faqDao")
public class FaqDao_Impl implements FaqDao {

	@Autowired
	SqlSession sqlSession;

	@Override
	public List<FaqVo> faq_selectList() {
		return sqlSession.selectList("faq.faq_List");
	}

	@Override
	public FaqVo faq_selectOne(String faq_title) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int faq_Insert(FaqVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int faq_Update(FaqVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int faq_Delete(int faq_idx) {
		// TODO Auto-generated method stub
		return 0;
	}

}
