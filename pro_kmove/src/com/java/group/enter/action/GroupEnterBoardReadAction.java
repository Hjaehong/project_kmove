package com.java.group.enter.action;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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

		HttpSession session=request.getSession();
		String id = (String) session.getAttribute("id");
		//logger.info(logMsg+"리드액션 id : "+id);

		int check = GroupEnterBoardDao.getInstance().isMine(board_number, id); // 자신의 게시물인지 확인
		//logger.info(logMsg+"리드액션 check : "+ check);
		
		if(check>0) { // 자신의 게시물이 맞으면
			List<JsonID> enterlist = EnterID.getInstance().getList(board_number); // 참여자 dto에서 받은 board_number와 같은것 list get 
			
			if(enterlist.size()!=0) {  // 값이 있으면 list 보내기
				request.setAttribute("enterlist", enterlist);
				logger.info(logMsg+"참여자 : "+enterlist.toString());
			}
		}
		
		request.setAttribute("groupEnterboardDto", groupEnterboardDto);
		request.setAttribute("pageNumber", pageNumber);
		
		
		
		return "/WEB-INF/views/groupPurchase/read.jsp";
	}

}
