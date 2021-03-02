package com.java.json.action;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONValue;

import com.java.command.Command;
import com.java.group.enter.dao.GroupEnterBoardDao;
import com.java.json.dao.EnterID;
import com.java.trigDao.TrigDao;

public class JsonArrIDAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		request.setCharacterEncoding("utf-8");

		String id = request.getParameter("id");
		int board_number = Integer.parseInt(request.getParameter("board_number"));
		String pushboard = request.getParameter("board_number");
		
		logger.info(logMsg+id+", board_number : "+board_number);

		int dont = GroupEnterBoardDao.getInstance().dontPeople(pushboard);
		logger.info(logMsg+dont);
		if(dont!=1) {	
			int check = EnterID.getInstance().enterReq(id, board_number); // 누른 사람 id와 누른 게시글 번호 insert
			
			String masterid = GroupEnterBoardDao.getInstance().getMasterID(pushboard); // 누른 게시글의 주인 id get
			TrigDao.getInstance().updateMasterID(id, pushboard, masterid); // trig에 masterid를 update
			logger.info(logMsg + check);
			
			if(check > 0) {
				HashMap<Object, Object> map = new HashMap<Object,Object>();
				map.put("id", id);
				map.put("board_number", board_number);
				map.put("dont", dont);
				
				String jsonText = JSONValue.toJSONString(map);
				logger.info(logMsg+"jsonText : "+jsonText);
				
				if(jsonText != null) {
					response.setContentType("application/x-json;charset=utf-8");
					PrintWriter out = response.getWriter();
					out.print(jsonText);
				}
			}
		}else {
			HashMap<Object, Object> map = new HashMap<Object,Object>();
			map.put("dont", dont);
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
