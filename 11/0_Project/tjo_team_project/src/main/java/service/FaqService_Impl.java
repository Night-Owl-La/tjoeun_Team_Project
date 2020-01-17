package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.FaqDao;
import vo.FaqVo;

@Service("faqService")
public class FaqService_Impl implements FaqService {

	@Autowired
	FaqDao faqDao;
	
	@Override
	public List<FaqVo> faq_selectList() {
		return faqDao.faq_selectList();
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
