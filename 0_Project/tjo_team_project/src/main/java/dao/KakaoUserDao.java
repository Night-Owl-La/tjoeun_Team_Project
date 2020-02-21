package dao;

import java.util.List;

import vo.KakaoUserVo;

public interface KakaoUserDao {

	public KakaoUserVo selectOne(int kakao_user_idx);
	
	public KakaoUserVo selectOne(String kakao_user_email);
	
	int insert(KakaoUserVo vo);
}
