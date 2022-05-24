package com.web.vo;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class MwRecipeVO {

	int rfavorite;
	
	String rnum, rcategory, rtitle, rcontent, rdate, rthumbnail, rsthumbnail;
	String rid, rfile1, rfile2, rfile3, rfile4, rfile5, rfile6, rsfile1, rsfile2, rsfile3, rsfile4, rsfile5, rsfile6;
	
	CommonsMultipartFile thumbnail;
	CommonsMultipartFile[] files;
	
	List<String> rfiles = new ArrayList();
	List<String> rsfiles = new ArrayList();
	
	public int getRfavorite() {
		return rfavorite;
	}
	public void setRfavorite(int rfavorite) {
		this.rfavorite = rfavorite;
	}
	public String getRnum() {
		return rnum;
	}
	public void setRnum(String rnum) {
		this.rnum = rnum;
	}
	public String getRcategory() {
		return rcategory;
	}
	public void setRcategory(String rcategory) {
		this.rcategory = rcategory;
	}
	public String getRtitle() {
		return rtitle;
	}
	public void setRtitle(String rtitle) {
		this.rtitle = rtitle;
	}
	public String getRcontent() {
		return rcontent;
	}
	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	public String getRthumbnail() {
		return rthumbnail;
	}
	public void setRthumbnail(String rthumbnail) {
		this.rthumbnail = rthumbnail;
	}
	public String getRsthumbnail() {
		return rsthumbnail;
	}
	public void setRsthumbnail(String rsthumbnail) {
		this.rsthumbnail = rsthumbnail;
	}
	public String getRid() {
		return rid;
	}
	public void setRid(String rid) {
		this.rid = rid;
	}
	public String getRfile1() {
		return rfile1;
	}
	public void setRfile1(String rfile1) {
		this.rfile1 = rfile1;
	}
	public String getRfile2() {
		return rfile2;
	}
	public void setRfile2(String rfile2) {
		this.rfile2 = rfile2;
	}
	public String getRfile3() {
		return rfile3;
	}
	public void setRfile3(String rfile3) {
		this.rfile3 = rfile3;
	}
	public String getRfile4() {
		return rfile4;
	}
	public void setRfile4(String rfile4) {
		this.rfile4 = rfile4;
	}
	public String getRfile5() {
		return rfile5;
	}
	public void setRfile5(String rfile5) {
		this.rfile5 = rfile5;
	}
	public String getRfile6() {
		return rfile6;
	}
	public void setRfile6(String rfile6) {
		this.rfile6 = rfile6;
	}
	public String getRsfile1() {
		return rsfile1;
	}
	public void setRsfile1(String rsfile1) {
		this.rsfile1 = rsfile1;
	}
	public String getRsfile2() {
		return rsfile2;
	}
	public void setRsfile2(String rsfile2) {
		this.rsfile2 = rsfile2;
	}
	public String getRsfile3() {
		return rsfile3;
	}
	public void setRsfile3(String rsfile3) {
		this.rsfile3 = rsfile3;
	}
	public String getRsfile4() {
		return rsfile4;
	}
	public void setRsfile4(String rsfile4) {
		this.rsfile4 = rsfile4;
	}
	public String getRsfile5() {
		return rsfile5;
	}
	public void setRsfile5(String rsfile5) {
		this.rsfile5 = rsfile5;
	}
	public String getRsfile6() {
		return rsfile6;
	}
	public void setRsfile6(String rsfile6) {
		this.rsfile6 = rsfile6;
	}
	public CommonsMultipartFile getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(CommonsMultipartFile thumbnail) {
		this.thumbnail = thumbnail;
	}
	public CommonsMultipartFile[] getFiles() {
		return files;
	}
	public void setFiles(CommonsMultipartFile[] files) {
		this.files = files;
	}
	public List<String> getRfiles() {
		return rfiles;
	}
	public void setRfiles(List<String> rfiles) {
		this.rfiles = rfiles;
	}
	public List<String> getRsfiles() {
		return rsfiles;
	}
	public void setRsfiles(List<String> rsfiles) {
		this.rsfiles = rsfiles;
	}

	
	
}
