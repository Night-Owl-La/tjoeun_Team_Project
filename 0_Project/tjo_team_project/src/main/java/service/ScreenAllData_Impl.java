package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ScreenDao;
import dao.ScreenTicketDao;
import dao.ScreenRegInfoDao;
import dao.ScreenSeatDao;
import dao.TheaterDao;
import vo.ScreenAllDataVo;
import vo.ScreenRegInfoVo;
import vo.ScreenSeatVo;
import vo.ScreenTicketVo;
import vo.ScreenVo;
import vo.TheaterVo;

@Service("screenAllData")
public class ScreenAllData_Impl implements ScreenAllData {
	
	@Autowired
	ScreenRegInfoDao screenRegInfoDao;
	
	@Autowired
	ScreenTicketDao screenTicketDao;
	
	@Autowired
	ScreenDao screenDao;
	
	@Autowired
	TheaterDao theaterDao;
	
	@Autowired
	ScreenSeatDao screenSeatDao;

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
		int scr_idx;
		int tht_idx;
		
		ScreenVo scrVo = screenDao.selectOne_DOCID(DOCID);
		scr_idx = scrVo.getScr_idx();
		tht_idx = scrVo.getTht_idx();
		
		ScreenRegInfoVo scrRegInfoVo = screenRegInfoDao.selectOne_DOCID(DOCID);
		ScreenTicketVo scrTicketVo = screenTicketDao.selectOne_ScrIdx(scr_idx);
		TheaterVo theaterVo = theaterDao.selectOne_ThtIdx(tht_idx);
		ScreenSeatVo scrSeatVo = screenSeatDao.selectOne_ScrIdx(scr_idx);
		scrSeatVo.setSeatMap(screenSeatDao.selectOne_ScrIdx_Map(scr_idx));
		
		vo.setScrRegInfoVo(scrRegInfoVo);
		vo.setScrVo(scrVo);
		vo.setScrTicketVo(scrTicketVo);
		vo.setTheaterVo(theaterVo);
		vo.setScrSeatVo(scrSeatVo);
		
		return vo;
	}

	@Override
	public ScreenAllDataVo selectOneByTheater(int tht_idx) {
		// TODO Auto-generated method stub
		return null;
	}

}
