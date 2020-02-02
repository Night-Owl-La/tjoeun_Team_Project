package dao;

import java.util.List;

public interface Screen_RegdataDao {
	List<String> selectList_DOCID();
	int insert();
	int update();
	int delete();
}