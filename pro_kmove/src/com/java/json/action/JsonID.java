package com.java.json.action;

public class JsonID {
	private String id;
	private int board_number;
	
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

	@Override
	public String toString() {
		return "JsonID [id=" + id + ", board_number=" + board_number + "]";
	}
	
}
