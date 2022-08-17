package kr.or.ddit.controller;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.or.ddit.dao.DoctorDAO;
import kr.or.ddit.dao.HospitalIpDAO;
import kr.or.ddit.dto.AdminVO;
import kr.or.ddit.dto.DoctorVO;
import kr.or.ddit.dto.HospitalIpVO;
import kr.or.ddit.exception.InvalidPasswordException;
import kr.or.ddit.exception.NotFoundIdException;
import kr.or.ddit.service.DoctorService;
import kr.or.ddit.service.HospitalService;

@Controller
@RequestMapping("login")
public class login {

	@Autowired
	private DoctorService doctorService;

	@Autowired
	private HospitalService hospitalService;

	//login check filter
	@RequestMapping(value="/loginForm",method = RequestMethod.GET)
	public String loginForm(@RequestParam(defaultValue = "")String error, HttpServletResponse response) throws SQLException, UnknownHostException {
//		String url = "login/blockLogin";
		String url = "login/loginForm";
		if(error.equals("-1")) {
			response.setStatus(302);
		}

//		// 병원 IP 모든 출력
//		List<HospitalIpVO> hosIp = hospitalService.blockHospitalIp();
//
//		System.out.println("hosIp!@~#@~"+hosIp);
//
//		// ip 출력
//		InetAddress ip = InetAddress.getLocalHost();
//
//		// 내 컴퓨터 IP 출력
//		String ipcheck=ip.getHostAddress();
//
//		System.out.println("나의 ip 주소!"+ipcheck);
//
//		// 내 컴퓨터 IP와 병원 IP가 일치할시 로그인 화면으로 이동
//		for(HospitalIpVO vo: hosIp) {
//			if(ipcheck.equals(vo.getIpNo())) {
//				url = "login/loginForm";
//				break;
//			}
//		}

		return url;
	}

//	@RequestMapping("/login")
//	public String originallogin(DoctorVO vo, HttpSession session, RedirectAttributes rttr,AdminVO avo) throws Exception {
//
//
//		avo.setAdminId(vo.getdId());
//
//		System.out.println(vo.getdId());
//		System.out.println(vo.getPwd());
//		System.out.println(avo.getAdminId());
////		String url ="login/loginForm2";
//		String url ="redirect:/index.do";
//
//		try {
//
//			DoctorVO doctorLogin = doctorService.doctorLogin(vo);
//
//
//				session.setAttribute("doctorLogin", doctorLogin);
//				//model.addAttribute("doctorLogin", doctorLogin);
////				System.out.println("session!~!~@~!@~!@~!@~!@~~@!");
//
//
//			} catch (NotFoundIdException | InvalidPasswordException e) {
//
//				rttr.addFlashAttribute("loginfail","login");
//				url ="redirect:/login/loginForm";
//			} catch(SQLException e) {
//				e.printStackTrace();
//				throw e;
//			}
//
//
//		if(vo.getdId().equals("admin")) {
//			// pwd 틀림
//			System.out.println(vo.getdId());
//			if(vo.getPwd().equals("admin")) {
//
//				session.setAttribute("admin", avo.getAdminId());
//
//				url = "redirect:/manager/manager";
//
//
//			}
//
//		}
//
//		return url;
//
//	}

	@ResponseBody
	@RequestMapping("/login")
	public ResponseEntity<Map<String, String>> login(@RequestBody Map<String, String> map, HttpSession session, RedirectAttributes rttr,AdminVO avo) throws Exception {

		//String url ="login/loginForm2";
		String url ="redirect:/index.do";

		ResponseEntity<Map<String, String>> entity = null;
		Map<String, String>  dataMap = new HashMap<String, String>();

		DoctorVO vo = new DoctorVO();

		vo.setdId(map.get("dId"));
		vo.setPwd(map.get("pwd"));

		System.out.println("vo.getdId()"+vo.getdId());

		avo.setAdminId(vo.getdId());

		System.out.println("1차로그인 버튼 클릭시 id"+map.get("dId"));
		System.out.println("1차로그인 버튼 클릭시 id"+map.get("pwd"));

		try {
			// 의사 상태
			doctorService.doctorStatusStart(map.get("dId"));

			// id값 새로 세팅
			vo.setdId(map.get("dId"));

//			 로그인
			DoctorVO doctorLogin = doctorService.doctorLogin(vo);
			System.out.println("doctorLogin에 들어간 값"+ doctorLogin);
			session.setAttribute("doctorLogin", doctorLogin);

//			 세션 확인
			System.out.println("session 유지"+session);

			// 전체 의사 출력
			List<Map<String,String>> allDoc = doctorService.allDoctor(map.get("dId"));

			System.out.println("전체의사 명단"+allDoc);

			for(Map<String,String> doc : allDoc) {

				if(doc.get("D_ID").equals(map.get("dId")) && doc.get("PWD").equals(map.get("pwd"))) {
					System.out.println("DB에 있는 아이디 입니다.");
					dataMap.put("dId", map.get("dId"));
					dataMap.put("pwd", map.get("pwd"));
					entity = new ResponseEntity<Map<String, String>>(dataMap,HttpStatus.OK);
					break;
				}
			}



		}catch (Exception e) {
			System.out.println("DB에 없는 아이디 입니다.");

			if(vo.getdId().equals("admin")) {
				// pwd 틀림
				System.out.println(vo.getdId());
				if(vo.getPwd().equals("admin")) {
					session.setAttribute("admin", avo.getAdminId());
					dataMap.put("admin",vo.getdId());
					url = "redirect:/manager/manager";

				}

			}else {
			dataMap.put("fail", "fail");
			}
			entity = new ResponseEntity<Map<String, String>>(dataMap,HttpStatus.OK);


		}

//				rttr.addFlashAttribute("loginfail","login");
				url ="redirect:/login/loginForm";




		return entity;

	}




	@RequestMapping(value = "/loginForm2")
	public String loginForm2() {
		String url ="login/loginForm2";
		return url;
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session, HttpServletRequest request) throws SQLException {
		String url = "redirect:/login/loginForm";

	    session = request.getSession();
		DoctorVO doctorvo = (DoctorVO) session.getAttribute("doctorLogin");


		System.out.println("vogetID!!@~@~"+doctorvo.getdId());

		doctorService.doctorStatusReset(doctorvo.getdId());

		session.invalidate();
		return url;

	}



}
