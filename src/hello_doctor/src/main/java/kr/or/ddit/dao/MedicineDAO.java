package kr.or.ddit.dao;

import java.sql.SQLException;
import java.util.List;

import kr.or.ddit.command.SearchCriteria;
import kr.or.ddit.dto.MedicineVO;

public interface MedicineDAO {

	List<MedicineVO> selectAllMedicine(SearchCriteria cri)throws SQLException;
	int selectAllMedicineCount(SearchCriteria cri)throws SQLException;
	void modifyY(String meNo)throws SQLException;
	void modifyN(String meNo)throws SQLException;

}
