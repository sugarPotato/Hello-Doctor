package kr.or.ddit.dao;

import java.sql.SQLException;
import java.util.List;

import kr.or.ddit.command.SearchCriteria;
import kr.or.ddit.dto.ManagerDoctorListVO;

public interface ManagerDAO {

	List<ManagerDoctorListVO> doctorListForPage(SearchCriteria cri) throws SQLException;

	int doctorListCount(SearchCriteria cri) throws SQLException;

	// 의사 상태 가져오기
	ManagerDoctorListVO doctorStatus(String dId) throws SQLException;

	// 정직
	void susDoctor(ManagerDoctorListVO doctorvo) throws SQLException;

	// 현직?
	void workDoctor(String dId) throws SQLException;

	// 퇴직
	void retireDoctor(ManagerDoctorListVO doctorvo) throws SQLException;

	// ipList
	List<ManagerDoctorListVO> ipListForPage(SearchCriteria cri)throws SQLException;
	int ipListForCount()throws SQLException;

	// ip추가
	void ipInsert(ManagerDoctorListVO doctorvo)throws SQLException;

	// ip선택
	List<ManagerDoctorListVO> memberIp(String dId)throws SQLException;

	// ip삭제
	void deleteIp(ManagerDoctorListVO doctorvo)throws SQLException;

	// 팝업 공지
	List<ManagerDoctorListVO> popUpNotice()throws SQLException;

	// 메인 신규회원가입
	List<ManagerDoctorListVO> mainMemberList()throws SQLException;
}
