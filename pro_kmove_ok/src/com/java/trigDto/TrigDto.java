package com.java.trigDto;

public class TrigDto {
	private int board_number;
	private String id;
	private int isOk;
	private String masterid;
	private String subject;
	
	public int getBoard_number() {
		return board_number;
	}
	public void setBoard_number(int board_number) {
		this.board_number = board_number;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getIsOk() {
		return isOk;
	}
	public void setIsOk(int isOk) {
		this.isOk = isOk;
	}
	public String getMasterid() {
		return masterid;
	}
	public void setMasterid(String masterid) {
		this.masterid = masterid;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	@Override
	public String toString() {
		return "TrigDto [board_number=" + board_number + ", id=" + id + ", isOk=" + isOk + ", masterid=" + masterid
				+ ", subject=" + subject + "]";
	}
}
