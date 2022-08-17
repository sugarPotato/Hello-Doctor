package kr.or.ddit.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.or.ddit.command.SearchCriteria;
import kr.or.ddit.dto.ManagerDoctorListVO;

public interface ManagerService {

	Map<String, Object> doctorListForPage(SearchCriteria cri) throws SQLException;

	// 의사 상태 가져오기
	ManagerDoctorListVO doctorStatus(String dId) throws SQLException;

	// 정직
	void susDoctor(ManagerDoctorListVO doctorvo) throws SQLException;

	// 현직?
	void workDoctor(String dId) throws SQLException;

	// 퇴직
	void retireDoctor(ManagerDoctorListVO doctorvo) throws SQLException;

	// ipList
	Map<String, Object> ipListForPage(SearchCriteria cri) throws SQLException;

	// ip추가
	void ipInsert(ManagerDoctorListVO doctorvo) throws SQLException;

	List<ManagerDoctorListVO> memberIp(String dId) throws SQLException;

	// ip삭제
	void deleteIp(ManagerDoctorListVO doctorvo) throws SQLException;

	// popUp
	List<ManagerDoctorListVO> popUpNotice() throws SQLException;

	// 메인 신규회원가입
	Map<String, Object> mainMemberList()throws SQLException;

}
