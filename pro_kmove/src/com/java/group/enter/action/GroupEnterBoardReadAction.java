package com.java.group.enter.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.command.Command;
import com.java.group.enter.dao.GroupEnterBoardDao;
import com.java.group.enter.dto.GroupEnterBoardDto;
import com.java.json.action.JsonID;
import com.java.json.dao.EnterID;

public class GroupEnterBoardReadAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		int board_number = Integer.parseInt(request.getParameter("board_number"));
		int pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		logger.info(logMsg + board_number + "," + pageNumber); 
		
		GroupEnterBoardDto groupEnterboardDto = GroupEnterBoardDao.getInstance().read(board_number);
		logger.info(logMsg + groupEnterboardDto.toString()); 
		
		request.setAttribute("groupEnterboardDto", groupEnterboardDto);
		request.setAttribute("pageNumber", pageNumber);
		
		List<JsonID> enterlist = EnterID.getInstance().getList(board_number);
		
		if(enterlist.size()!=0) {
			request.setAttribute("enterlist", enterlist);
			logger.info(logMsg+"참여자 : "+enterlist.toString());
		}
		
		return "/WEB-INF/views/groupPurchase/read.jsp";
	}

}
