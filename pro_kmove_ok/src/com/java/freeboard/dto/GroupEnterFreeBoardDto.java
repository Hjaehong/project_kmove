package com.java.freeboard.dto;

import java.util.Date;

public class GroupEnterFreeBoardDto {
	
	private int board_number;		
	private String writer; 						
	private String contents;
	private int read_count;	
	private Date write_date;		
	private int group_number;	
	private int sequence_number;	
	private int sequence_level;	
	private String subject;
	
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
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public int getRead_count() {
		return read_count;
	}
	public void setRead_count(int read_count) {
		this.read_count = read_count;
	}
	public Date getWrite_date() {
		return write_date;
	}
	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
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
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	@Override
	public String toString() {
		return "GroupEnterFreeBoardDto [board_number=" + board_number + ", writer=" + writer + ", contents=" + contents
				+ ", read_count=" + read_count + ", write_date=" + write_date + ", group_number=" + group_number
				+ ", sequence_number=" + sequence_number + ", sequence_level=" + sequence_level + ", subject=" + subject
				+ "]";
	}

}
			
		
