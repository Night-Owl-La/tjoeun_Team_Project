package service;

import java.util.List;

import vo.FaqVo;

public interface FaqService {
	public List<FaqVo> faq_selectList();
	public FaqVo faq_selectOne(String faq_title);
	public int faq_Insert(FaqVo vo);
	public int faq_Update(FaqVo vo);
	public int faq_Delete(int faq_idx);
}
