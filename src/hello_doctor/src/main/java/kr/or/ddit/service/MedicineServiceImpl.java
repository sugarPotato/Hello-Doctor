package kr.or.ddit.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.ddit.command.PageMaker;
import kr.or.ddit.command.SearchCriteria;
import kr.or.ddit.dao.MedicineDAO;
import kr.or.ddit.dao.MyOrderDAO;
import kr.or.ddit.dto.MedicineVO;

public class MedicineServiceImpl implements MedicineService{
	private MedicineDAO medicineDAO;

	public void setMedicineDAO(MedicineDAO medicineDAO) {
		this.medicineDAO = medicineDAO;
	}

	@Override
	public Map<String,Object> selectAllMedicine(SearchCriteria cri) throws SQLException {
		cri.setPerPageNum(10);
		Map<String,Object> map = new HashMap<String, Object>();
		List<MedicineVO> result = 	medicineDAO.selectAllMedicine(cri);
		int totalCount = medicineDAO.selectAllMedicineCount(cri);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);
		map.put("pageMaker", pageMaker);
		map.put("medicineList", result);
		return map;
	}

	@Override
	public void modifyN(String meNo) throws SQLException {
		medicineDAO.modifyN(meNo);

	}

	@Override
	public void modifyY(String meNo) throws SQLException {
		medicineDAO.modifyY(meNo);
	}

}
