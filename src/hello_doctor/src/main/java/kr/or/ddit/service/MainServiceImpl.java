package kr.or.ddit.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.ddit.dao.CooperMyDao;
import kr.or.ddit.dao.MainDAO;
import kr.or.ddit.dao.MediRecoDAO;
import kr.or.ddit.dao.MyOrderDAO;
import kr.or.ddit.dto.CoFreqVO;
import kr.or.ddit.dto.MainVO;
import kr.or.ddit.dto.MedFileVO;
import kr.or.ddit.dto.MedPicVO;
import kr.or.ddit.dto.MediRecoVO;
import kr.or.ddit.dto.PrescriptVO;
import kr.or.ddit.dto.SubDVO;
import kr.or.ddit.util.MakeFileName;

public class MainServiceImpl implements MainService {

	private MainDAO maindao;

	public void setMaindao(MainDAO maindao) {
		this.maindao = maindao;
	}

	private MediRecoDAO mediRecodao;

	private MyOrderDAO myOrderdao;

	private CooperMyDao cooperMyDao;


	public void setCooperMyDao(CooperMyDao cooperMyDao) {
		this.cooperMyDao = cooperMyDao;
	}


	public void setMediRecodao(MediRecoDAO mediRecodao) {
		this.mediRecodao = mediRecodao;
	}

	public void setMyOrderdao(MyOrderDAO myOrderdao) {
		this.myOrderdao = myOrderdao;
	}

	@Override
	public Map<String, Object> mainMyPaintStatus(String dId) throws SQLException {

		Map<String, Object> map = new HashMap<String, Object>();

		List<MainVO> myPaintList = maindao.mainMyPaintStatus(dId);

		for(MainVO vo : myPaintList) {
			vo.setpRnum(vo.getpRnum().substring(0,8));


		}

		map.put("myPaintList", myPaintList);

		return map;
	}

	@Override
	public Map<String, Object> mainMyPaintDetail(String mNo,String dId) throws SQLException {

		Map<String, Object> map = new HashMap<String, Object>();
		MainVO paintIssue = maindao.mainPaintIssue(mNo);
		MediRecoVO pastsymptom = mediRecodao.pastsymptom(mNo);
		List<PrescriptVO> orderdruglist = myOrderdao.pastdrug(mNo);
		List<SubDVO> sub_dlist = myOrderdao.pastsubD(mNo);
		List<MedPicVO> pic = mediRecodao.getAllPic(mNo);
		List<MedFileVO> file = mediRecodao.getAllFile(mNo);
		MainVO paieninfo = maindao.mainPaienInfo(mNo);

		MainVO vo = new MainVO() ;
		vo.setmNo(mNo);
		vo.setdId(dId);
		MainVO issueYN = maindao.mainIssueYN(vo);

		paieninfo.setpRnum(paieninfo.getpRnum().substring(0,8));


		map.put("paintIssue", paintIssue);
		map.put("pastsymptom", pastsymptom);
		map.put("orderdruglist", orderdruglist);
		map.put("sub_dlist", sub_dlist);
		map.put("pic", pic);
		map.put("paieninfo", paieninfo);
		map.put("issueYN", issueYN);
		if (file != null) {
			for (int i = 0; i < file.size(); i++) {
				String fileName = file.get(i).getMfFilename();
				String renew = MakeFileName.parseFileNameFromUUID(fileName, "\\&\\&");
				file.get(i).setMfFilename(renew);
			}
		}
		map.put("file", file);


		System.out.println("servicedMap"+map);

		return map;

	}

	@Override
	public List<MainVO> allPaintStatus(String dId) throws SQLException {
		// TODO Auto-generated method stub
		return maindao.allPaintStatus(dId);
	}


	@Override
	public Map<String, Object> coFreqList(String dId) throws SQLException {

		Map<String, Object> map = new HashMap<String, Object>();

		List<CoFreqVO> coFreqList = cooperMyDao.selectCoFreq(dId);

		System.out.println("service==>"+coFreqList);

		map.put("coFreqList", coFreqList);

		return map;
	}


	@Override
	public void issueYnChange(MainVO vo) throws SQLException {

			maindao.issueYnChange(vo);
	}


	@Override
	public List<MainVO> myCodocMno(String dId) throws SQLException {


		List<MainVO> myCodocMnoList = maindao.myCodocMno(dId);


		return myCodocMnoList;
	}


}
