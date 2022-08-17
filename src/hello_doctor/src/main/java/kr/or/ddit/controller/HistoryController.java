package kr.or.ddit.controller;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;


import kr.or.ddit.command.SearchCriteria;

import kr.or.ddit.dto.ChartPicFileVO;
import kr.or.ddit.dto.ComRecoVO;
import kr.or.ddit.dto.DoctorVO;
import kr.or.ddit.dto.HistoryVO;
import kr.or.ddit.dto.LastChartFileVO;
import kr.or.ddit.dto.LastPrescriptVO;
import kr.or.ddit.dto.MyHistoryCommentVO;

import kr.or.ddit.service.CaseReplyService;
import kr.or.ddit.service.CooperMyService;
import kr.or.ddit.service.HistoryService;
import kr.or.ddit.service.MediRecoService;

@Controller
@RequestMapping("/history")
public class HistoryController {

	HttpSession session = null;
	@Autowired
	private CooperMyService myService;

	@Autowired
	private CaseReplyService replyService;

	@Autowired
	private MediRecoService mediRecoservice;

	@Autowired
	private HistoryService service;

	@RequestMapping("/main") //기능
	public ModelAndView request(HttpServletRequest request, ModelAndView mnv) throws SQLException{
		String url = "history/main";
		session = request.getSession();
		DoctorVO doctorLogin = (DoctorVO) session.getAttribute("doctorLogin");
		String dId = doctorLogin.getdId();
		System.out.println(dId);

		//진료히스토리
		List<HistoryVO> diagnosis = service.diagnosisHistory(dId);
		mnv.addObject("diagnosis",diagnosis);
		//협진히스토리
		List<HistoryVO> Cooperation = service.CooperationHistory(dId);
		mnv.addObject("Cooperation",Cooperation);
		//공지사항
		List<HistoryVO> noticeList = service.NoticeList(dId);
		mnv.addObject("noticeList",noticeList);
		//알림 -협진요청받은것
		List<HistoryVO> comingalarm = service.alarmList(dId);
		mnv.addObject("comingalarm",comingalarm);
		//협진요청 보낸기록
		List<HistoryVO> sending = service.sendList(dId);
		mnv.addObject("sending",sending);

		//좋아요
		List<HistoryVO> likeList = service.LikeList(dId);
		System.out.println("좋아요!"+likeList);
		mnv.addObject("likeList",likeList);

		//댓글
		List<HistoryVO> commentList = service.commentList(dId);
		System.out.println("댓글!"+commentList);
		mnv.addObject("commentList",commentList);

		//로그
		List<HistoryVO> logList = service.LogHistory(dId);
		mnv.addObject("logList",logList);

		mnv.setViewName(url);
		return mnv;
	}

	@RequestMapping("/diagnosis_history") //기능
	public ModelAndView diagnosis_history(SearchCriteria cri,HttpServletRequest request, ModelAndView mnv)throws SQLException{
		String url = "history/diagnosis_history";
		session = request.getSession();
		DoctorVO doctorLogin = (DoctorVO) session.getAttribute("doctorLogin");
		String dId = doctorLogin.getdId();

		Map<String, Object> dataMap = service.AllDiagnosis(cri, dId);
		mnv.addObject("dataMap",dataMap);
		mnv.setViewName(url);
		return mnv;
	}

	@RequestMapping("/cooperation_history") //기능
	public ModelAndView cooperation_history(SearchCriteria cri,HttpServletRequest request, ModelAndView mnv) throws SQLException{
		String url = "history/cooperation_history";
		session = request.getSession();
		DoctorVO doctorLogin = (DoctorVO) session.getAttribute("doctorLogin");
		String dId = doctorLogin.getdId();
		System.out.println(dId);

		Map<String, Object> dataMap = service.AllCooperation(cri, dId);
		mnv.addObject("dataMap",dataMap);
		mnv.setViewName(url);
		return mnv;
	}

	@RequestMapping("/mylog2") //기능
	public String mylog(){
		String url = "history/mylog2";
		return url;
	}

	@RequestMapping("notice")
	public ModelAndView notice(HttpServletRequest request, ModelAndView mnv)throws SQLException {
		String url = "history/notice";
		session = request.getSession();
		DoctorVO doctorLogin = (DoctorVO) session.getAttribute("doctorLogin");
		String dId = doctorLogin.getdId();
		System.out.println(dId);

		List<HistoryVO> NotcieBoard = service.Notice(dId);
		mnv.addObject("NotcieBoard",NotcieBoard);
		mnv.setViewName(url);
		return mnv;
	}

	@RequestMapping("notice_detail")
	public String noticeDetail(String nNo,Model model) throws SQLException{
		String url="history/notice_detail";

		HistoryVO noticeDetail = service.selectNotice(nNo);
		model.addAttribute("noticeDetail",noticeDetail);
		return url;

	}

	@RequestMapping("cooperation_receive")
	public String cooperationReceive() throws SQLException{
		String url="history/cooperationRequest";
		return url;
	}


	@RequestMapping("/historyDetail")
	public String history_detail(String comNo,Model model,HttpSession session) throws SQLException {
		String url = "cooperation/historyDetail";
		//현재로그인한 사람 정보가져오기
		DoctorVO vo = (DoctorVO) session.getAttribute("doctorLogin");
		model.addAttribute("vo",vo);

		//진료기록가져오기
	ComRecoVO historyDetail =	myService.selecthistoryDetail(comNo);
	model.addAttribute("historyDetail",historyDetail);
	try {
		String mNo = historyDetail.getmNo();
		// 의료사진
		List<ChartPicFileVO> chartPicList = myService.selectChartPicFile(mNo);
		model.addAttribute("chartPicList", chartPicList);
		// 가장최근진료기록에 대한 의료기록 파일정보
		List<LastChartFileVO> chartFileList = myService.selectChartFile(mNo);
		model.addAttribute("chartFileList", chartFileList);
		// 처방전
		List<LastPrescriptVO> lastPreList = myService.selectLastPrescript(mNo);
		System.out.println("처방전==>" + lastPreList);
		model.addAttribute("lastPreList", lastPreList);
		//해당진료의 댓글 list
		List<MyHistoryCommentVO> commentList = myService.historyCommentList(mNo);
		model.addAttribute("commentList",commentList);
		System.out.println("commentList==>"+commentList);

	}catch(Exception e) {
     model.addAttribute("chartPicList", null);
      model.addAttribute("chartFileList", null);
      model.addAttribute("lastPreList", null);
      model.addAttribute("commentList",null);
	}


		return url;
	}


}
