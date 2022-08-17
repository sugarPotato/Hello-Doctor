package kr.or.ddit.dto;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

public class PrescriptVO {
	private String mNo        ;
	private String preNo      ;
	private String cureName   ;
	private int quantity    ;
	private int dgAday        ;
	private int dgDays        ;


	public String getmNo() {
		return mNo;
	}



	public void setmNo(String mNo) {
		this.mNo = mNo;
	}



	public String getPreNo() {
		return preNo;
	}



	public void setPreNo(String preNo) {
		this.preNo = preNo;
	}



	public String getCureName() {
		return cureName;
	}



	public void setCureName(String cureName) {
		this.cureName = cureName;
	}



	public int getQuantity() {
		return quantity;
	}



	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}



	public int getDgAday() {
		return dgAday;
	}



	public void setDgAday(int dgAday) {
		this.dgAday = dgAday;
	}



	public int getDgDays() {
		return dgDays;
	}



	public void setDgDays(int dgDays) {
		this.dgDays = dgDays;
	}



	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.JSON_STYLE);
	}


}
