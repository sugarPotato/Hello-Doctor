package kr.or.ddit.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.ddit.command.PageMaker;
import kr.or.ddit.command.SearchCriteria;
import kr.or.ddit.dao.CooperMainDao;
import kr.or.ddit.dao.CooperMyDao;
import kr.or.ddit.dto.CoDocApproveVO;
import kr.or.ddit.dto.DidApproveVO;
import kr.or.ddit.dto.DoctorVO;
import kr.or.ddit.dto.IssueVO;
import kr.or.ddit.dto.JoinCooperVO;
import kr.or.ddit.dto.MyHistoryCommentVO;
import kr.or.ddit.dto.NotiVO;


public class CooperMainServiceImpl implements CooperMainService {

	private CooperMainDao cooperMainDao;
	public void setCooperMainDao(CooperMainDao cooperMainDao) {
		this.cooperMainDao = cooperMainDao;
	}


	//참여중인 협진리스트 가져오기
	@Override
	public Map<String,Object> selectCooperList(String dId ,SearchCriteria cri) throws SQLException {
		Map<String,Object> dataMap =new HashMap<String,Object>();
		// 현재 page 번호에 맞는 리스트를 perPageNum 개수 만큼 가져오기.
		List<JoinCooperVO> cooList = cooperMainDao.selectCooperList(dId,cri);
		//전체 개수
		int totalCount = cooList.size();

		//PageMaker 생성
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);

		dataMap.put("cooList", cooList);
		dataMap.put("pageMaker", pageMaker);
		return  dataMap;
	}


	@Override
	public List<IssueVO> selectIssueList(String dId) throws SQLException {
		List<IssueVO> issueList = cooperMainDao.selectIssueList(dId);
		return issueList;
	}


	@Override
	public List<MyHistoryCommentVO> selectHistoryComment(String dId) throws SQLException {
		List<MyHistoryCommentVO>  historyCommentList = cooperMainDao.selectHistoryComment(dId);
		return historyCommentList;
	}


	@Override
	public List<NotiVO> selectNoti(String dId) throws SQLException {
		List<NotiVO> notiList = cooperMainDao.selectNoti(dId);
		return notiList;
	}


	@Override
	public List<CoDocApproveVO> selectapproveList(String dId) throws SQLException {
		List<CoDocApproveVO> approveList = cooperMainDao.selectapproveList(dId);
		return approveList;
	}


	@Override
	public List<DidApproveVO> selectmyapproveList(String dId) throws SQLException {
		 List<DidApproveVO>  myApproveList = cooperMainDao.selectmyapproveList(dId);
		return myApproveList;
	}


	@Override
	public Map<String, Object> cooperationRequest(String notiNo) throws SQLException {
		Map<String,Object> map = new HashMap<String, Object>();

		NotiVO notiVO = cooperMainDao.noticeRequestinfo(notiNo);
		List<DoctorVO> doctorList = cooperMainDao.noticeRequsetDoctors(notiVO.getCoNo());
		map.put("notiVO", notiVO);
		map.put("doctorList", doctorList);
		return map;
	}


	@Override
	public void FreqRegist(Map<String, String> map) throws SQLException {
		// TODO Auto-generated method stub
		cooperMainDao.FreqRegist(map);

	}


	@Override
	public void RreqCancel(Map<String, String> map) throws SQLException {
		// TODO Auto-generated method stub
		cooperMainDao.FreqCancel(map);
	}


	@Override
	public void rejectRegist(Map<String, String> map) throws SQLException {
		// TODO Auto-generated method stub
		cooperMainDao.rejectRegist(map);

	}


	@Override
	public String checkReferTaNo(String taNo) throws SQLException {
		// TODO Auto-generated method stub
		return cooperMainDao.checkReferTaNo(taNo);
	}


	@Override
	public void updateReferStatus(String taNo) throws SQLException {
		cooperMainDao.updateReferStatus(taNo);

	}


	@Override
	public void rejectStatus(Map<String, String> map) throws SQLException {
		cooperMainDao.rejectStatus(map);

	}


	@Override
	public int checkRemove(String taNo) throws SQLException {
		// TODO Auto-generated method stub
		return cooperMainDao.checkRemove(taNo);
	}





	@Override
	public void updateRemoveStatus(String taNo) throws SQLException {
		cooperMainDao.updateCotaskStatus(taNo);
		cooperMainDao.updateApproveStatus(taNo);

	}


	@Override
	public void updateRemoveReject(String taNo) throws SQLException {
		cooperMainDao.updateApproveStatus(taNo);
		
	}


	












}
