package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.OnebyDao;
import vo.OnebyVo;

@Service("onebyService")
public class OnebyService_Impl implements OnebyService {

	@Autowired
	OnebyDao onebyDao;
	
	@Override
	public List<OnebyVo> oneby_selectList(int user_idx) {
		return onebyDao.oneby_selectList(user_idx);
	}

	@Override
	public OnebyVo oneby_selectOne(String oneby_category) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int oneby_Insert(OnebyVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int oneby_Update(OnebyVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int oneby_Delete(int oneby_idx) {
		// TODO Auto-generated method stub
		return 0;
	}

}
