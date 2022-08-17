package kr.or.ddit.controller;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.or.ddit.dao.MainDAO;
import kr.or.ddit.dto.DoctorVO;
import kr.or.ddit.dto.ManagerNoticeVO;
import kr.or.ddit.service.CooperMyService;
import kr.or.ddit.service.MainComRecoService;
import kr.or.ddit.service.MainIssueService;
import kr.or.ddit.service.MainService;
import kr.or.ddit.service.NoticeService;

@Controller
@RequestMapping("main")
public class MainController {

	@Autowired
	private MainService mainService;

	@Autowired
	private MainIssueService isService;

	@Autowired
	private MainComRecoService comRecoService;

	@Autowired
	private NoticeService noticeService;

	// 홈에서 특이사항 리스트 출력...
	@RequestMapping("/index")
	public String mainissuelist( Model model,HttpServletRequest request) throws SQLException {
		String url ="main/index";

		HttpSession session = request.getSession();
		DoctorVO doctorLogin = (DoctorVO) session.getAttribute("doctorLogin");
		String dId = doctorLogin.getdId();


		Map<String, Object> dataMap = null;
		Map<String, Object> comRecoDataMap = null;
		Map<String, Object> myPaintDetailMap = null;
		Map<String, Object> coFreqMap = null;


		// 홈에서 특이사항 리스트 출력...
//		dataMap= isService.mainIssueList(dId);

		// 홈에서 나의 환자 상태 리스트 출력..
		dataMap= mainService.mainMyPaintStatus(dId);
		dataMap.put("pop",noticeService.popUpNotice());
		System.out.println("dataMap~!@!~@~!@"+dataMap);

		// 홈에서 최근 협진 리스트 출력..
		comRecoDataMap = comRecoService.mainComRecoList(dId);
		System.out.println("comRecoDataMap@!#@~#~@~@!~!@@!~"+comRecoDataMap);

		// 홈에서 즐겨찾은 협진 리스트 출력..
		coFreqMap =mainService.coFreqList(dId);
		System.out.println("coFreqMap@!#@~#~@~!!!!!!!!@@@@~!@@!~"+coFreqMap);

		// 환자 진료코드
//		myPaintDetailMap = mainService.mainMyPaintDetail(dId);
//		System.out.println("myPaintDetailMap~!@~@!~@"+myPaintDetailMap);

		model.addAttribute("dataMap", dataMap);
		model.addAttribute("comRecoDataMap",comRecoDataMap);
		model.addAttribute("coFreqMap",coFreqMap);
//		model.addAttribute("myPaintDetailMap", myPaintDetailMap);

		return url;

	}

	@RequestMapping("popUp")
	public ModelAndView popUp(ModelAndView mnv, String nNo)throws Exception{
		String url = "main/popUp";
		ManagerNoticeVO noticeVO = noticeService.popUpNoticeByNo(nNo);
		mnv.addObject("noticeVO", noticeVO);
		mnv.setViewName(url);
		return mnv;
	}
}
