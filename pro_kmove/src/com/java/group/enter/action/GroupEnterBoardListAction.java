package com.java.group.enter.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.command.Command;
import com.java.group.enter.dao.GroupEnterBoardDao;
import com.java.group.enter.dto.GroupEnterBoardDto;

public class GroupEnterBoardListAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String pageNumber = request.getParameter("pageNumber");
		if(pageNumber == null) {
			pageNumber = "1";
		}
		int currentPage = Integer.parseInt(pageNumber);
		logger.info(logMsg + "currentPage : " + currentPage);
		
		int boardSize = 10;
		int startRow = (currentPage-1)*boardSize+1; 
		int endRow = (currentPage*boardSize);
		
		
		List<GroupEnterBoardDto> groupboardList = null;
		groupboardList = GroupEnterBoardDao.getInstance().getBoardList(startRow, endRow);
		
		request.setAttribute("boardSize", boardSize);		// ���������� �Խù� ��
		request.setAttribute("currentPage", currentPage);	// ��û ������
		request.setAttribute("boardList", groupboardList);		// �������� �Խù�
		
		return "/WEB-INF/views/groupPurchase/list.jsp";
	}
}
