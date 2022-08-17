package kr.or.ddit.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.ddit.command.OtherDoctorCommand;
import kr.or.ddit.dao.DoctorDAO;
import kr.or.ddit.dto.CoDoctorVO;
import kr.or.ddit.dto.CoworkerVO;
import kr.or.ddit.dto.DoctorVO;
import kr.or.ddit.dto.MajorVO;
import kr.or.ddit.exception.InvalidPasswordException;
import kr.or.ddit.exception.NotFoundIdException;

public class DoctorServiceImpl implements DoctorService {

	private DoctorDAO doctorDAO;

	public void setDoctorDAO(DoctorDAO doctorDAO) {
		this.doctorDAO = doctorDAO;
	}

	@Override
	public DoctorVO doctorLogin(DoctorVO vo) throws SQLException,NotFoundIdException,InvalidPasswordException {

	DoctorVO result = 	doctorDAO.doctorLogin(vo);

		if(result == null) {
			//id틀림;
			throw new NotFoundIdException();
		}else if(!result.getPwd().equals(vo.getPwd())) {
			//pwd 틀림;
			throw new InvalidPasswordException();
		}
		System.out.println(result.getdId());
		System.out.println(result.getPwd());

		return result;
	}

	@Override
	public DoctorVO profileChange(DoctorVO vo) throws SQLException {

		DoctorVO result = doctorDAO.profileChange(vo);

		System.out.println("result!!~@~!@~!@~@~"+result);

		return result;
	}

	@Override
	public DoctorVO selectDoctorVO(String dId) throws SQLException {

		return doctorDAO.selectDoctorVO(dId);
	}

	@Override
	public List<MajorVO> majorList() throws SQLException {
		List<MajorVO> result = doctorDAO.majorList();
		return result;
	}

	@Override
	public List<MajorVO> majorDoctors(MajorVO vo) throws SQLException {
		List<MajorVO> result = doctorDAO.majorDoctors(vo);
		return result;
	}

	@Override
	public Map<String, Object> detailDoctor(OtherDoctorCommand command) throws SQLException {
		    Map<String,Object> map = new HashMap<String,Object>();

			List<CoDoctorVO> list = doctorDAO.coDoctor(command);
			for(int i = 0; i<list.size(); i++) {
				if(list.get(i).getEndNo() == null) {
					list.get(i).setResultDate("진행중");
				}else {
					list.get(i).setResultDate("종료");
				}


			}
			MajorVO vo = doctorDAO.detailDoctor(command.getDoId());
			int result = vo.getStatus();

			if(result == 1) {
				vo.setStatusResult("진료중");
			}else if (result == 2) {
				vo.setStatusResult("수술중");
			}else if (result == 3) {
				vo.setStatusResult("자리비움");
			}else if (result == 4) {
				vo.setStatusResult("부재중");
			}
			map.put("coDoctor", list);
			map.put("detailDoctor", vo);
		return map;
	}

	@Override
	public MajorVO simpleProfile(String dId) throws SQLException {
		MajorVO result = doctorDAO.detailDoctor(dId);
		return result;
	}

	@Override
	public List<MajorVO> simpleProfile2(List<String> dIdList) throws SQLException {
		List<MajorVO> list = new ArrayList<MajorVO>();

		for(String dId : dIdList) {
			MajorVO vo = doctorDAO.detailDoctor(dId);
			list.add(vo);
		}
		return list;
	}


	@Override
	public DoctorVO getDoctor(DoctorVO vo) throws SQLException {
		DoctorVO result = doctorDAO.getDoctor(vo);

		return result;
	}

	@Override
	public void doctorStatusReset(String dId) throws SQLException {

		 doctorDAO.doctorStatusReset(dId);

	}

	@Override
	public void doctorStatusStart(String dId) throws SQLException {

		doctorDAO.doctorStatusStart(dId);

	}

	@Override
	public Map<String, Object> coworkerList(String dId) throws SQLException {
		Map<String,Object> map = new HashMap<String, Object>();

		List<MajorVO> major = doctorDAO.majorList();
		List<CoworkerVO> coworker = doctorDAO.coworkerList(dId);
		map.put("major", major);
		map.put("coworker", coworker);
		return map;
	}

	@Override
	public MajorVO addCoworker(CoworkerVO vo) throws SQLException {
		MajorVO result = doctorDAO.detailDoctor(vo.getCodId());
						doctorDAO.addCoworker(vo);

		return result;
	}

	@Override
	public void deleteCoworker(CoworkerVO vo) throws SQLException {

		doctorDAO.deleteCoworker(vo);
	}

	@Override
	public List<Map<String, String>> allDoctor(String dId) throws SQLException {
		List<Map<String, String>> result = doctorDAO.allDoctor(dId);

		return result;
	}




}
