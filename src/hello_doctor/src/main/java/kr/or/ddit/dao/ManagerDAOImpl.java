package kr.or.ddit.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.command.SearchCriteria;
import kr.or.ddit.dto.ManagerDoctorListVO;

public class ManagerDAOImpl implements ManagerDAO {

	private SqlSession session;
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<ManagerDoctorListVO> doctorListForPage(SearchCriteria cri) throws SQLException {
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();

		RowBounds row = new RowBounds(offset,limit);
		List<ManagerDoctorListVO> list = session.selectList("Manager-Mapper.doctorListForPage", cri, row);
		return list;
	}

	@Override
	public int doctorListCount(SearchCriteria cri) throws SQLException {
		int count = session.selectOne("Manager-Mapper.doctorListCount", cri);
		return count;
	}

	// 정직
	@Override
	public void susDoctor(ManagerDoctorListVO doctorvo) throws SQLException {
		session.update("Manager-Mapper.susDoctor", doctorvo);

	}

	@Override
	public ManagerDoctorListVO doctorStatus(String dId) throws SQLException {
		ManagerDoctorListVO doctorvo = session.selectOne("Manager-Mapper.doctorStatus", dId);
		return doctorvo;
	}

	@Override
	public void workDoctor(String dId) throws SQLException {
		session.update("Manager-Mapper.workDoctor", dId);

	}

	@Override
	public void retireDoctor(ManagerDoctorListVO doctorvo) throws SQLException {
		session.update("Manager-Mapper.retireDoctor", doctorvo);

	}

	@Override
	public List<ManagerDoctorListVO> ipListForPage(SearchCriteria cri) throws SQLException {
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds row = new RowBounds(offset,limit);
		List<ManagerDoctorListVO> list = session.selectList("Manager-Mapper.ipListForPage", cri, row);
		return list;
	}

	@Override
	public int ipListForCount() throws SQLException {
		int count = session.selectOne("Manager-Mapper.ipListForCount");
		return count;
	}

	@Override
	public void ipInsert(ManagerDoctorListVO doctorvo) throws SQLException {
		session.update("Manager-Mapper.ipInsert", doctorvo);

	}

	@Override
	public List<ManagerDoctorListVO> memberIp(String dId) throws SQLException {
		List<ManagerDoctorListVO> iplist = session.selectList("Manager-Mapper.memberIp", dId);
		return iplist;
	}

	@Override
	public void deleteIp(ManagerDoctorListVO doctorvo) throws SQLException {
		session.update("Manager-Mapper.deleteIp", doctorvo);

	}

	@Override
	public List<ManagerDoctorListVO> popUpNotice() throws SQLException {
		List<ManagerDoctorListVO> list = session.selectList("Manager-Mapper.popUpNotice");
		return list;
	}

	@Override
	public List<ManagerDoctorListVO> mainMemberList() throws SQLException {
		List<ManagerDoctorListVO>list = session.selectList("Manager-Mapper.mainMemberList");
		return list;
	}

}
