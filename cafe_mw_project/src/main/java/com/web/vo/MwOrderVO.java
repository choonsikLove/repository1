package com.web.vo;

public class MwOrderVO {
	String cid, c_pnum;
	String pname, pmainsfile;
	int pprice, psaleprice, pstock, c_qnt;
	String[] cids;
	
	
	public String[] getCids() {
		return cids;
	}

	public void setCids(String[] cids) {
		this.cids = cids;
	}

	public int getPstock() {
		return pstock;
	}

	public void setPstock(int pstock) {
		this.pstock = pstock;
	}

	public int getC_qnt() {
		return c_qnt;
	}

	public void setC_qnt(int c_qnt) {
		this.c_qnt = c_qnt;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPmainsfile() {
		return pmainsfile;
	}

	public void setPmainsfile(String pmainsfile) {
		this.pmainsfile = pmainsfile;
	}

	public int getPprice() {
		return pprice;
	}

	public void setPprice(int pprice) {
		this.pprice = pprice;
	}

	public int getPsaleprice() {
		return psaleprice;
	}

	public void setPsaleprice(int psaleprice) {
		this.psaleprice = psaleprice;
	}

	public String getCid() {
		return cid;
	}

	public void setCid(String cid) {
		this.cid = cid;
	}

	public String getC_pnum() {
		return c_pnum;
	}

	public void setC_pnum(String c_pnum) {
		this.c_pnum = c_pnum;
	}
	
	

}
