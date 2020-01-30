package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ScreenDao;
import dao.ScreenDateDao;
import dao.ScreenRegInfoDao;
import dao.TheaterDao;
import vo.ScreenAllDataVo;
import vo.ScreenDateVo;
import vo.ScreenRegInfoVo;
import vo.ScreenVo;
import vo.TheaterVo;

@Service("screenAllData")
public class ScreenAllData_Impl implements ScreenAllData {
	
	@Autowired
	ScreenRegInfoDao screenRegInfoDao;
	
	@Autowired
	ScreenDateDao screenDateDao;
	
	@Autowired
	ScreenDao screenDao;
	
	@Autowired
	TheaterDao theaterDao;

	@Override
	public List<ScreenAllDataVo> selectList() {
		return null;
	}

	@Override
	public ScreenAllDataVo selectOne(int scr_idx) {
		return null;
	}

	@Override
	public ScreenAllDataVo selectOne(String DOCID) {
		ScreenAllDataVo vo = new ScreenAllDataVo();
		
		ScreenRegInfoVo scrRegInfoVo = screenRegInfoDao.selectOne(DOCID);
		ScreenDateVo scrDateVo = screenDateDao.selectOne(DOCID);
		ScreenVo scrVo = screenDao.selectOne(scrRegInfoVo.getScr_idx());
		TheaterVo theaterVo = theaterDao.selectOne(scrVo.getTht_idx());
		
		vo.setScrRegInfoVo(scrRegInfoVo);
		vo.setScrDateVo(scrDateVo);
		vo.setScrVo(scrVo);
		vo.setTheaterVo(theaterVo);
		
		return vo;
	}

	@Override
	public ScreenAllDataVo selectOneByTheater(int tht_idx) {
		// TODO Auto-generated method stub
		return null;
	}

}
