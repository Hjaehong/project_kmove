package com.java.enter.ok;

import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONValue;

import com.java.command.Command;
import com.java.group.enter.dao.GroupEnterBoardDao;
import com.java.group.enter.dto.GroupEnterBoardDto;
import com.java.json.action.JsonID;
import com.java.json.dao.EnterID;
import com.java.trigDao.TrigDao;

public class OkAction implements Command{

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String id = request.getParameter("id");
		String board_number = request.getParameter("board_number");
		// 누른사람 id와 누른 board_number
		logger.info("id : "+id+","+"board_number : " + board_number);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("board_number", board_number);
		
		EnterID.getInstance().changeOC(id, board_number); // 참여ID 수락 눌렀을때
		
		GroupEnterBoardDao.getInstance().peoplecount(board_number); // 수락누르면 참가자 +1
		
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
