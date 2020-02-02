package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("screen_RegdataDao")
public class Screen_RegdataDao_Impl implements Screen_RegdataDao {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<String> selectList_DOCID() {
		return sqlSession.selectList("screen_regdata.screen_regdata_List");
	}

	@Override
	public int insert() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete() {
		// TODO Auto-generated method stub
		return 0;
	}

}
