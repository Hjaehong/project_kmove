package com.java.member.dto;

public class MemberDto {
	private String member_number;
	private String id;
	private String password;
	private String name;
	private String nickname;
	private String phone1;
	private String phone2;
	private String phone3;
	
	private String grade;
	private String zipcode;
	private String address;
	
	private int ban;

	public String getMember_number() {
		return member_number;
	}

	public void setMember_number(String member_number) {
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

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
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
				+ ", nickname=" + nickname + ", phone1=" + phone1 + ", phone2=" + phone2 + ", phone3=" + phone3
				+ ", grade=" + grade + ", zipcode=" + zipcode + ", address=" + address + ", ban=" + ban + "]";
	}
}
