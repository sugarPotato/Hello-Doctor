package kr.or.ddit.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.ddit.command.PageMaker;
import kr.or.ddit.command.SearchCriteria;
import kr.or.ddit.dao.ManagerDAO;
import kr.or.ddit.dto.ManagerDoctorListVO;

public class ManagerServiceImpl implements ManagerService {

	private ManagerDAO managerdao;
	public void setManagerdao(ManagerDAO managerdao) {
		this.managerdao = managerdao;
	}

	@Override
	public Map<String, Object> doctorListForPage(SearchCriteria cri) throws SQLException {
		Map<String, Object> map = new HashMap<String, Object>();

		List<ManagerDoctorListVO> list = managerdao.doctorListForPage(cri);
		int count = managerdao.doctorListCount(cri);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(count);
		map.put("list", list);
		map.put("pageMaker", pageMaker);
		return map;
	}

	@Override
	public void susDoctor(ManagerDoctorListVO doctorvo) throws SQLException {
		managerdao.susDoctor(doctorvo);

	}

	@Override
	public ManagerDoctorListVO doctorStatus(String dId) throws SQLException {
		ManagerDoctorListVO doctorvo = managerdao.doctorStatus(dId);
		return doctorvo;
	}

	@Override
	public void workDoctor(String dId) throws SQLException {
		managerdao.workDoctor(dId);

	}

	@Override
	public void retireDoctor(ManagerDoctorListVO doctorvo) throws SQLException {
		managerdao.retireDoctor(doctorvo);

	}

	@Override
	public Map<String, Object> ipListForPage(SearchCriteria cri) throws SQLException {
		Map<String, Object> map = new HashMap<String, Object>();
		List<ManagerDoctorListVO> list = managerdao.ipListForPage(cri);
		int count = managerdao.ipListForCount();
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(count);
		map.put("list", list);
		map.put("pageMaker", pageMaker);
		return map;
	}

	@Override
	public void ipInsert(ManagerDoctorListVO doctorvo) throws SQLException {
		managerdao.ipInsert(doctorvo);

	}

	@Override
	public List<ManagerDoctorListVO> memberIp(String dId) throws SQLException {
		List<ManagerDoctorListVO> iplist = managerdao.memberIp(dId);
		return iplist;
	}

	@Override
	public void deleteIp(ManagerDoctorListVO doctorvo) throws SQLException {
		managerdao.deleteIp(doctorvo);

	}

	@Override
	public List<ManagerDoctorListVO> popUpNotice() throws SQLException {
		List<ManagerDoctorListVO> list = managerdao.popUpNotice();
		return list;
	}

	@Override
	public Map<String, Object> mainMemberList() throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		List<ManagerDoctorListVO> list = managerdao.mainMemberList();
		dataMap.put("member", list);
		return dataMap;
	}





}
