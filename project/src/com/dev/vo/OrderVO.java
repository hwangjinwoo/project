package com.dev.vo;

import java.sql.*;

public class OrderVO {
	private int onum;
	private String pname;
	private String id;
	private int amount;
	private Timestamp odate;
	
	public int getOnum() {
		return onum;
	}
	public String getPname() {
		return pname;
	}
	public String getId() {
		return id;
	}
	public int getAmount() {
		return amount;
	}
	public Timestamp getOdate() {
		return odate;
	}
	public void setOnum(int onum) {
		this.onum = onum;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public void setOdate(Timestamp odate) {
		this.odate = odate;
	}
	
	
}
