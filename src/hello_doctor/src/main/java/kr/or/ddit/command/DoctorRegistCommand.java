package kr.or.ddit.command;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.dto.DoctorVO;

public class DoctorRegistCommand extends DoctorVO{
	private MultipartFile file;



	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}


	public DoctorVO toDoctorVO() {
		DoctorVO doctor = new DoctorVO();
		doctor.setdId(getdId());
		doctor.setPwd(getPwd());
		doctor.setdName(getdName());
		doctor.setResidentNum(getFirstRnum()+"-"+getSecondRnum());
		doctor.setEmail(getEmail());
		doctor.setOtpCo(getOtpCo());
		doctor.setOtpQr(getOtpQr());
		doctor.setMaName(getMaName());
		doctor.setTel(getTel());

		return doctor;

	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.JSON_STYLE);
	}






}
