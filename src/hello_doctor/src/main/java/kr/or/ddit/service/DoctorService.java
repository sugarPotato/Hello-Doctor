package kr.or.ddit.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.or.ddit.command.OtherDoctorCommand;
import kr.or.ddit.dto.CoworkerVO;
import kr.or.ddit.dto.DoctorVO;
import kr.or.ddit.dto.MajorVO;
import kr.or.ddit.exception.InvalidPasswordException;
import kr.or.ddit.exception.NotFoundIdException;

public interface DoctorService {

	DoctorVO doctorLogin(DoctorVO vo)throws SQLException, NotFoundIdException, InvalidPasswordException;

	DoctorVO getDoctor(DoctorVO vo)throws SQLException;

	DoctorVO profileChange(DoctorVO vo)throws SQLException;
	DoctorVO selectDoctorVO(String dId)throws SQLException;
	List<MajorVO> majorList()throws SQLException;
	List<MajorVO> majorDoctors(MajorVO vo)throws SQLException;
	Map<String,Object>detailDoctor(OtherDoctorCommand command)throws SQLException;
	MajorVO simpleProfile(String dId)throws SQLException;
	List<MajorVO> simpleProfile2(List<String> dIdList)throws SQLException;
	Map<String,Object> coworkerList(String dId)throws SQLException;
	// 로그아웃시, 상태 0으로 초기화
	void doctorStatusReset (String dId) throws SQLException;

	// 로그인 시, 상태 1로 초기화
	void doctorStatusStart (String dId) throws SQLException;

	MajorVO addCoworker(CoworkerVO vo)throws SQLException;

	void deleteCoworker(CoworkerVO vo)throws SQLException;

	List<Map<String,String>> allDoctor(String dId) throws SQLException;

}
