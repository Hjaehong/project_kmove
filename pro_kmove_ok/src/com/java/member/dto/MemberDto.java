package com.java.member.dto;

public class MemberDto {
	private int member_number;
	
	private String id;
	private String password;
	private String name;
	private String nickname;
	private String zipcode;
	private String address1;
	private String address2;
	private String phone1;
	private String phone2;
	private String phone3;
	
	private String grade;
	
	private int ban;

	public int getMember_number() {
		return member_number;
	}

	public void setMember_number(int member_number) {
		this.member_number = member_number;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getPhone1() {
		return phone1;
	}

	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}

	public String getPhone2() {
		return phone2;
	}

	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}

	public String getPhone3() {
		return phone3;
	}

	public void setPhone3(String phone3) {
		this.phone3 = phone3;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public int getBan() {
		return ban;
	}

	public void setBan(int ban) {
		this.ban = ban;
	}

	@Override
	public String toString() {
		return "MemberDto [member_number=" + member_number + ", id=" + id + ", password=" + password + ", name=" + name
				+ ", nickname=" + nickname + ", zipcode=" + zipcode + ", address1=" + address1 + ", address2="
				+ address2 + ", phone1=" + phone1 + ", phone2=" + phone2 + ", phone3=" + phone3 + ", grade=" + grade
				+ ", ban=" + ban + "]";
	}

	

	
}
