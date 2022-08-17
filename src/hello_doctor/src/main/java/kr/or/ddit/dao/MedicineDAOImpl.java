package kr.or.ddit.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.command.SearchCriteria;
import kr.or.ddit.dto.MedicineVO;

public class MedicineDAOImpl implements MedicineDAO {
	private SqlSession session;
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<MedicineVO> selectAllMedicine(SearchCriteria cri) throws SQLException {
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();

		RowBounds row = new RowBounds(offset,limit);

		List<MedicineVO> result =session.selectList("OurDrug-Mapper.selectAllMedicine", cri,row );
		return result;
	}

	@Override
	public int selectAllMedicineCount(SearchCriteria cri) throws SQLException {
		int result = session.selectOne("OurDrug-Mapper.selectAllMedicineCount", cri);
		return result;
	}

	@Override
	public void modifyY(String meNo) throws SQLException {
		session.update("OurDrug-Mapper.modifyY" , meNo);

	}

	@Override
	public void modifyN(String meNo) throws SQLException {
		session.update("OurDrug-Mapper.modifyN" , meNo);

	}

}
