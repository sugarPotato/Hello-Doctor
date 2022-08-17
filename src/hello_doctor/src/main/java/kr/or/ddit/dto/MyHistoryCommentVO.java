package kr.or.ddit.dto;

import java.util.Date;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

public class MyHistoryCommentVO {

	private String comNo;
	private String comCoNo;
	private String dId;
	private String coNo;
	private String comContent;
	private String comDate;
	private String dPic;

	private String delYn;
	private String maNo;
	private String dName;
	private int status;
	private String maName;

	private String taNo;


	public String getComNo() {
		return comNo;
	}

	public void setComNo(String comNo) {
		this.comNo = comNo;
	}

	public String getComCoNo() {
		return comCoNo;
	}

	public void setComCoNo(String comCoNo) {
		this.comCoNo = comCoNo;
	}

	public String getdId() {
		return dId;
	}

	public void setdId(String dId) {
		this.dId = dId;
	}

	public String getCoNo() {
		return coNo;
	}

	public void setCoNo(String coNo) {
		this.coNo = coNo;
	}

	public String getComContent() {
		return comContent;
	}

	public void setComContent(String comContent) {
		this.comContent = comContent;
	}

	public String getComDate() {
		return comDate;
	}

	public void setComDate(String comDate) {
		this.comDate = comDate;
	}

	public String getdPic() {
		return dPic;
	}

	public void setdPic(String dPic) {
		this.dPic = dPic;
	}

	public String getDelYn() {
		return delYn;
	}

	public void setDelYn(String delYn) {
		this.delYn = delYn;
	}

	public String getMaNo() {
		return maNo;
	}

	public void setMaNo(String maNo) {
		this.maNo = maNo;
	}

	public String getdName() {
		return dName;
	}

	public void setdName(String dName) {
		this.dName = dName;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getMaName() {
		return maName;
	}

	public void setMaName(String maName) {
		this.maName = maName;
	}

	public String getTaNo() {
		return taNo;
	}

	public void setTaNo(String taNo) {
		this.taNo = taNo;
	}

	@Override
	public String toString() {
		return "MyHistoryCommentVO [comNo=" + comNo + ", comCoNo=" + comCoNo + ", dId=" + dId + ", coNo=" + coNo
				+ ", comContent=" + comContent + ", comDate=" + comDate + ", dPic=" + dPic + ", delYn=" + delYn
				+ ", maNo=" + maNo + ", dName=" + dName + ", status=" + status + ", maName=" + maName + ", taNo=" + taNo
				+ "]";
	}


















}
