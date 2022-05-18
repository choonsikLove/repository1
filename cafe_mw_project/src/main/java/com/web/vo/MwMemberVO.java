package com.web.vo;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class MwMemberVO {
	String memail, mpass, mname, mhp, reccode, maddr1, maddr2, mprofile, msprofile, mdate;
	int msg_sms, msg_email, mno;
	CommonsMultipartFile file;
	
	public String getMdate() {
		return mdate;
	}
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public void setMdate(String mdate) {
		this.mdate = mdate;
	}
	
	public CommonsMultipartFile getFile() {
		return file;
	}
	public void setFile(CommonsMultipartFile file) {
		this.file = file;
	}
	public String getMemail() {
		return memail;
	}
	public void setMemail(String memail) {
		this.memail = memail;
	}
	public String getMpass() {
		return mpass;
	}
	public void setMpass(String mpass) {
		this.mpass = mpass;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMhp() {
		return mhp;
	}
	public void setMhp(String mhp) {
		this.mhp = mhp;
	}
	public String getReccode() {
		return reccode;
	}
	public void setReccode(String reccode) {
		this.reccode = reccode;
	}
	public String getMaddr1() {
		return maddr1;
	}
	public void setMaddr1(String maddr1) {
		this.maddr1 = maddr1;
	}
	public String getMaddr2() {
		return maddr2;
	}
	public void setMaddr2(String maddr2) {
		this.maddr2 = maddr2;
	}
	public String getMprofile() {
		return mprofile;
	}
	public void setMprofile(String mprofile) {
		this.mprofile = mprofile;
	}
	public String getMsprofile() {
		return msprofile;
	}
	public void setMsprofile(String msprofile) {
		this.msprofile = msprofile;
	}
	public int getMsg_sms() {
		return msg_sms;
	}
	public void setMsg_sms(int msg_sms) {
		this.msg_sms = msg_sms;
	}
	public int getMsg_email() {
		return msg_email;
	}
	public void setMsg_email(int msg_email) {
		this.msg_email = msg_email;
	}
	
}
