package com.java.group.jjim.dto;

// 찜기능 구성을 위한 getter , setter
public class GroupJjimBoarDto {
	private String cart_id;		// 스퀸스가 저장될 속성
	private String id;			// 찜한 사용자id
	private String subject;		// 찜한 게시물의 제목
	private int price;			// 찜한 게시물의 가격
	private int board_number;	// 찜한 게시물의 번호
	
	public String getCart_id() {
		return cart_id;
	}
	public void setCart_id(String cart_id) {
		this.cart_id = cart_id;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getBoard_number() {
		return board_number;
	}
	public void setBoard_number(int board_number) {
		this.board_number = board_number;
	}
	
	@Override
	public String toString() {
		return "GroupJjimBoarDto [cart_id=" + cart_id + ", id=" + id + ", subject=" + subject + ", price=" + price
				+ ", board_number=" + board_number + "]";
	}

}
