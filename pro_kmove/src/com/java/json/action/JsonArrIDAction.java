package com.java.json.action;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONValue;

import com.java.command.Command;
import com.java.json.dao.EnterID;

public class JsonArrIDAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		request.setCharacterEncoding("utf-8");

		String id = request.getParameter("id");
		int board_number = Integer.parseInt(request.getParameter("board_number"));
		logger.info(logMsg+id+", board_number : "+board_number);
		
		
		
		int check = EnterID.getInstance().enterReq(id, board_number);
		logger.info(logMsg + check);
		
		if(check > 0) {
			HashMap<String, Object> map = new HashMap<String,Object>();
			map.put("id", id);
			
			String jsonText = JSONValue.toJSONString(map);
			logger.info(logMsg+"jsonText : "+jsonText);
			
			if(jsonText != null) {
				response.setContentType("application/x-json;charset=utf-8");
				PrintWriter out = response.getWriter();
				out.print(jsonText);
			}
		}
		
		
		
		return null;
	}

}
