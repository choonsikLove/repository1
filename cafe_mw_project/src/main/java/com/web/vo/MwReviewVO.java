package com.web.vo;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class MwReviewVO {

	String vid, vdate, vcontent, vpnum, vmemail, vfile, vsfile;
	
	CommonsMultipartFile file;

	public String getVid() {
		return vid;
	}

	public void setVid(String vid) {
		this.vid = vid;
	}

	public String getVdate() {
		return vdate;
	}

	public void setVdate(String vdate) {
		this.vdate = vdate;
	}

	public String getVcontent() {
		return vcontent;
	}

	public void setVcontent(String vcontent) {
		this.vcontent = vcontent;
	}

	public String getVpnum() {
		return vpnum;
	}

	public void setVpnum(String vpnum) {
		this.vpnum = vpnum;
	}

	public String getVmemail() {
		return vmemail;
	}

	public void setVmemail(String vmemail) {
		this.vmemail = vmemail;
	}

	public String getVfile() {
		return vfile;
	}

	public void setVfile(String vfile) {
		this.vfile = vfile;
	}

	public String getVsfile() {
		return vsfile;
	}

	public void setVsfile(String vsfile) {
		this.vsfile = vsfile;
	}

	public CommonsMultipartFile getFile() {
		return file;
	}

	public void setFile(CommonsMultipartFile file) {
		this.file = file;
	}

	
}
