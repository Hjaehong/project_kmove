package com.java.group.enter.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.command.Command;
import com.java.group.enter.dao.GroupEnterBoardDao;
import com.java.group.enter.dto.GroupEnterBoardDto;
import com.java.group.jjim.dao.GroupJjimBoardDao;
import com.java.group.jjim.dto.GroupJjimBoarDto;

// 02-26
// 찜 기능 수행하는 액션
public class GroupEnterBoardJjimAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// 찜버튼 눌렀을때 해당 글의 번호 가져옴
		int board_number = Integer.parseInt(request.getParameter("board_number"));
		// 
		String id = request.getParameter("id");
		GroupEnterBoardDto gdto = new GroupEnterBoardDto();

		// 게시물 데이터가 들어 있는 테이블
		gdto = GroupEnterBoardDao.getInstance().pick(board_number);
		// 게시판의 글번호, 제목 , 가격
		int bn = gdto.getBoard_number();
		String sub = gdto.getSubject();
		int price = gdto.getPrice();
		

		// 찜한 게시물을 list에 저장
		int check = GroupJjimBoardDao.getInstance().jjimNumber(bn, sub, price, id);
		logger.info(logMsg + "board_number(GJDto) : " + board_number + ", id(session) : " + id + ", check : " + check);

		request.setAttribute("check", check);
		request.setAttribute("board_number", board_number);

		return null;
	}

}
