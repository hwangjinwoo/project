package com.dev.vo;

public class VO {
	   private String id;
	   private String pwd;
	   private String name;
	   private String email;
	   private String phone;
	   private String address;
	   
	   public String getEmail() {
	      return email;
	   }
	   public String getPhone() {
	      return phone;
	   }
	   public String getAddress() {
	      return address;
	   }
	   public void setEmail(String email) {
	      this.email = email;
	   }
	   public void setPhone(String phone) {
	      this.phone = phone;
	   }
	   public void setAddress(String address) {
	      this.address = address;
	   }
	   public String getId()
	   {
	      return id;
	   }
	   public void setId(String tId)
	   {
	      this.id = tId;
	   }
	   public String getPwd()
	   {
	      return pwd;
	   }
	   public void setPwd(String tPwd)
	   {
	      this.pwd = tPwd;
	   }
	   public String getName()
	   {
	      return name;
	   }
	   public void setName(String tName)
	   {
	      this.name = tName;
	   }
}

