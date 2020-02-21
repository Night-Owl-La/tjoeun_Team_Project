package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.KakaoUserVo;

@Repository("kakaouser_dao")
public class KakaoUserDaoImpl implements KakaoUserDao  {

	@Autowired
	SqlSession sqlSession;
	
	
	@Override
	public KakaoUserVo selectOne(int kakao_user_idx) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("kakao.kakao_one_idx", kakao_user_idx);
	}

	@Override
	public KakaoUserVo selectOne(String kakao_user_email) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("kakao.kakao_one_email", kakao_user_email);
	}

	@Override
	public int insert(KakaoUserVo vo) {
		return sqlSession.insert("kakao.insert_kakaoAccount", vo);
	}
	
	

}
