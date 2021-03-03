package com.java.group.enter.dto;

import java.util.Date;

public class GroupEnterBoardDto {
	
	private int board_number;		
	private String writer; 			
	private String subject;			
	private String contents;			
	private String board_password;

	private Date write_date;		
	private Date end_date;
	private String id;
	private int price;
	private int peoplecount;
	
	private String kakaoID;
	private String picture_load;	
	private int read_count;			
	private int group_number;		
	private int sequence_number;	
	private int sequence_level;		
	private int member_number;
	private int enterpeople;
	
	private String fileName;							// 파일이름
	private String path;								// 파일경로
	private long fileSize;								// 파일사이즈
	private String rName;								// 중복이름 관리
	 
	
	public int getBoard_number() {
		return board_number;
	}
	public void setBoard_number(int board_number) {
		this.board_number = board_number;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Date getWrite_date() {
		return write_date;
	}
	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}
	public int getRead_count() {
		return read_count;
	}
	public void setRead_count(int read_count) {
		this.read_count = read_count;
	}
	public int getGroup_number() {
		return group_number;
	}
	public void setGroup_number(int group_number) {
		this.group_number = group_number;
	}
	public int getSequence_number() {
		return sequence_number;
	}
	public void setSequence_number(int sequence_number) {
		this.sequence_number = sequence_number;
	}
	public int getSequence_level() {
		return sequence_level;
	}
	public void setSequence_level(int sequence_level) {
		this.sequence_level = sequence_level;
	}
	public String getBoard_password() {
		return board_password;
	}
	public void setBoard_password(String board_password) {
		this.board_password = board_password;
	}
	public Date getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getPeoplecount() {
		return peoplecount;
	}
	public void setPeoplecount(int peoplecount) {
		this.peoplecount = peoplecount;
	}
	public String getKakaoID() {
		return kakaoID;
	}
	public void setKakaoID(String kakaoID) {
		this.kakaoID = kakaoID;
	}
	public String getPicture_load() {
		return picture_load;
	}
	public void setPicture_load(String picture_load) {
		this.picture_load = picture_load;
	}
	
	public int getMember_number() {
		return member_number;
	}
	public void setMember_number(int member_number) {
		this.member_number = member_number;
	}
	
	public int getEnterpeople() {
		return enterpeople;
	}
	public void setEnterpeople(int enterpeople) {
		this.enterpeople = enterpeople;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public long getFileSize() {
		return fileSize;
	}
	public void setFileSize(long fileSize) {
		this.fileSize = fileSize;
	}
	public String getrName() {
		return rName;
	}
	public void setrName(String rName) {
		this.rName = rName;
	}
	@Override
	public String toString() {
		return "GroupEnterBoardDto [board_number=" + board_number + ", writer=" + writer + ", subject=" + subject
				+ ", contents=" + contents + ", board_password=" + board_password + ", write_date=" + write_date
				+ ", end_date=" + end_date + ", id=" + id + ", price=" + price + ", peoplecount=" + peoplecount
				+ ", kakaoID=" + kakaoID + ", picture_load=" + picture_load + ", read_count=" + read_count
				+ ", group_number=" + group_number + ", sequence_number=" + sequence_number + ", sequence_level="
				+ sequence_level + ", member_number=" + member_number + ", enterpeople=" + enterpeople + ", fileName="
				+ fileName + ", path=" + path + ", fileSize=" + fileSize + ", rName=" + rName + "]";
	}
	
	
}
