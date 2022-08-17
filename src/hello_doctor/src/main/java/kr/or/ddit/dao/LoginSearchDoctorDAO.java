package kr.or.ddit.dao;

import java.sql.SQLException;
import java.util.Map;

import kr.or.ddit.dto.DoctorVO;

public interface LoginSearchDoctorDAO {

	DoctorVO secuDoctor(String dId) throws SQLException;





}
