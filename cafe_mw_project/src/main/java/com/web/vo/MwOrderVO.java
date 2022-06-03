package com.web.vo;

public class MwOrderVO {
	String oid, oproducts, obuyer, ob_hp, ob_email, odate, orecipient, or_hp, or_post, or_addr1, or_addr2, oinvoice, opayment,
		ocids;
	String[] oproduct, ocid;
	int ototal,oshipment, oship_memo, ostatus;
	
	
	
	
	public String getOcids() {
		if(ocid != null) {
			ocids = String.join(",", ocid);
		}
		return ocids;
	}
	public void setOcids(String ocids) {
		this.ocids = ocids;
	}
	public String[] getOcid() {
		return ocid;
	}
	public void setOcid(String[] ocid) {
		this.ocid = ocid;
	}
	public int getOstatus() {
		return ostatus;
	}
	public void setOstatus(int ostatus) {
		this.ostatus = ostatus;
	}
	public String getOb_hp() {
		return ob_hp;
	}
	public void setOb_hp(String ob_hp) {
		this.ob_hp = ob_hp;
	}
	public String getOb_email() {
		return ob_email;
	}
	public void setOb_email(String ob_email) {
		this.ob_email = ob_email;
	}
	public String getOid() {
		return oid;
	}
	public void setOid(String oid) {
		this.oid = oid;
	}
	public String getOproducts() {
		if(oproduct != null) {
			oproducts = String.join(",", oproduct);
		}
		
		return oproducts;
	}
	public void setOproducts(String oproducts) {
		this.oproducts = oproducts;
	}
	public String getObuyer() {
		return obuyer;
	}
	public void setObuyer(String obuyer) {
		this.obuyer = obuyer;
	}
	public String getOdate() {
		return odate;
	}
	public void setOdate(String odate) {
		this.odate = odate;
	}
	public String getOrecipient() {
		return orecipient;
	}
	public void setOrecipient(String orecipient) {
		this.orecipient = orecipient;
	}
	public String getOr_hp() {
		return or_hp;
	}
	public void setOr_hp(String or_hp) {
		this.or_hp = or_hp;
	}
	public String getOr_post() {
		return or_post;
	}
	public void setOr_post(String or_post) {
		this.or_post = or_post;
	}
	public String getOr_addr1() {
		return or_addr1;
	}
	public void setOr_addr1(String or_addr1) {
		this.or_addr1 = or_addr1;
	}
	public String getOr_addr2() {
		return or_addr2;
	}
	public void setOr_addr2(String or_addr2) {
		this.or_addr2 = or_addr2;
	}
	public String getOinvoice() {
		return oinvoice;
	}
	public void setOinvoice(String oinvoice) {
		this.oinvoice = oinvoice;
	}
	public String[] getOproduct() {
		return oproduct;
	}
	public void setOproduct(String[] oproduct) {
		this.oproduct = oproduct;
	}
	public int getOtotal() {
		return ototal;
	}
	public void setOtotal(int ototal) {
		this.ototal = ototal;
	}
	public String getOpayment() {
		return opayment;
	}
	public void setOpayment(String opayment) {
		this.opayment = opayment;
	}
	public int getOshipment() {
		return oshipment;
	}
	public void setOshipment(int oshipment) {
		this.oshipment = oshipment;
	}
	public int getOship_memo() {
		return oship_memo;
	}
	public void setOship_memo(int oship_memo) {
		this.oship_memo = oship_memo;
	}
	
	

}
