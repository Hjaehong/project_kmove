package com.java.group.enter.action;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.command.Command;
import com.java.group.enter.dao.GroupEnterBoardDao;
import com.java.group.enter.dto.GroupEnterBoardDto;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class GroupEnterBoardWriteOkAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("utf-8");

		// 업로드 된 파일이 저장되는 절대경로
		String path = request.getServletContext().getRealPath("/upload");

		// 경로에 폴더가 없으면 폴더를 생성
		File uploadFilePath = new File(path);
		if (!uploadFilePath.exists()) {
			uploadFilePath.mkdirs();
		}

		int size = 1024 * 1024 * 3; // 3MB 용량 제한

		// 파일 업로드를 위한 메서드 요청 , 경로 , 파일크기, 인코딩방식, 중복 파일 관리
		MultipartRequest multi = new MultipartRequest(request, path, size, "utf-8", new DefaultFileRenamePolicy());

		// write.jsp에서 file input의 name을 가져옴
		String fileName = multi.getFilesystemName("fileName");

		String full_path = path + "\\" + fileName;
		String board_number = multi.getParameter("board_number"); // 글번호
		String group_number = multi.getParameter("group_number"); // 그룹번호
		String sequence_number = multi.getParameter("sequence_number"); // 스퀀스번호
		String sequence_level = multi.getParameter("sequence_level"); // 스퀀스레벨

		String board_password = multi.getParameter("board_password"); // 글 비밀번호(마감)
		String writer = multi.getParameter("writer"); // 작성자
		String peoplecount = multi.getParameter("peoplecount"); // 인원수
		String price = multi.getParameter("price"); // 가격
		String subject = multi.getParameter("subject"); // 제목
		String kakaoID = multi.getParameter("kakaoID"); // 카카오톡 ID
		String contents = multi.getParameter("contents"); // 내용
		String pageNumberRead =multi.getParameter("pageNumber");
		String end_date = multi.getParameter("end_date");

		GroupEnterBoardDto groupEnterboardDto = new GroupEnterBoardDto();
		groupEnterboardDto.setFileName(fileName);
		groupEnterboardDto.setPath(full_path);
		groupEnterboardDto.setBoard_number(Integer.parseInt(board_number));
		groupEnterboardDto.setGroup_number(Integer.parseInt(group_number));
		groupEnterboardDto.setSequence_number(Integer.parseInt(sequence_number));
		groupEnterboardDto.setSequence_level(Integer.parseInt(sequence_level));
		groupEnterboardDto.setBoard_password(board_password);
		groupEnterboardDto.setWriter(writer);

		Date selectedDate = new SimpleDateFormat("yyyy-MM").parse(end_date);
		groupEnterboardDto.setEnd_date(selectedDate);

		groupEnterboardDto.setPeoplecount(Integer.parseInt(peoplecount));
		groupEnterboardDto.setPrice(Integer.parseInt(price));
		groupEnterboardDto.setSubject(subject);
		groupEnterboardDto.setKakaoID(kakaoID);
		groupEnterboardDto.setContents(contents);
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		groupEnterboardDto.setId(id);

		int pageNumber = Integer.parseInt(pageNumberRead);

		
		groupEnterboardDto.setRead_count(0);
		//logger.info(logMsg +"제발 : " +groupEnterboardDto.toString()); 
		
		int check = GroupEnterBoardDao.getInstance().insert(groupEnterboardDto);
		logger.info(logMsg + check); 
		
		request.setAttribute("check", check);
		request.setAttribute("pageNumber", pageNumber);
		
		return "/WEB-INF/views/groupPurchase/writeOk.jsp";
	}

}
