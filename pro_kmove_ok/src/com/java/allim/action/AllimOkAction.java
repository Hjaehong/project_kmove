package com.java.allim.action;

import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONValue;

import com.java.command.Command;
import com.java.trigDao.TrigDao;

public class AllimOkAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String board_number = request.getParameter("board_number"); //누른 id, board_number 받아오기
		String id = request.getParameter("id");
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("board_number", board_number);
		
		int check = TrigDao.getInstance().changeOk(id, board_number); // 알림테이블에 확인한 알림은 isOk를 1로 변경
		
		
		System.out.println("check :::======== " + check);
		String jsonText = JSONValue.toJSONString(map);
		logger.info(logMsg+"jsonText : "+jsonText);
		
		if(jsonText != null) {
			response.setContentType("application/x-json;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.print(jsonText);
		}
		
		return null;
	}

}
