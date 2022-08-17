package kr.or.ddit.dao;

import java.sql.SQLException;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.dto.DoctorVO;

public class LoginSearchDoctorDAOImpl implements LoginSearchDoctorDAO{

	private SqlSession session;

	public void setSession(SqlSession session) {
		this.session = session;
	}


	@Override
	public DoctorVO secuDoctor(String dId) throws SQLException {
		DoctorVO result = session.selectOne("Doctor-Mapper.securityLogin",dId) ;
		return result;
	}

}
