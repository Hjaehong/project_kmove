package com.java.enter.cancel;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.command.Command;
import com.java.group.enter.dao.GroupEnterBoardDao;
import com.java.json.dao.EnterID;

public class CancelAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		String id = request.getParameter("id");
		String board_number = request.getParameter("board_number");
		logger.info(logMsg+ id +", " + board_number);
		
		int check = EnterID.getInstance().delete(id, board_number);
		logger.info(logMsg+check);
		
		if(check>0) {
			response.setContentType("application/txt;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.print(id);
		}
		return null;
	}

}
