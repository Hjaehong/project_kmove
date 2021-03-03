package com.java.group.jjim.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.java.group.enter.dao.GroupEnterBoardDao;
import com.java.group.enter.dto.GroupEnterBoardDto;
import com.java.group.jjim.dto.GroupJjimBoarDto;
import com.java.myBatis.SqlManager;

// 0302
// 찜기능을 수행하는 Dao
public class GroupJjimBoardDao{
	private static SqlSessionFactory sqlSessionFactory = SqlManager.getInstance();
	private static SqlSession session;
	private static GroupJjimBoardDao instance = new GroupJjimBoardDao();
	
	public static GroupJjimBoardDao getInstance() {		
		return instance;	
	}

	// 게시판(board)테이블에서 글번호(bn), 제목(sub), 가격(price), 회원아이디(id)
	public int jjimNumber(int bn, String sub, int price, String id) {
		int check = 0;
		HashMap<Object, Object> hMap = new HashMap<Object, Object>();
		hMap.put("bn", bn);
		hMap.put("sub", sub);
		hMap.put("price", price);
		hMap.put("id", id);
		
		try {
			session = sqlSessionFactory.openSession();
			check = session.insert("pickJjimBoard", hMap);
			session.commit();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return check;
	}

	public List<GroupJjimBoarDto> readJjim(String id) {
		// TODO Auto-generated method stub
		List<GroupJjimBoarDto> jjimLlist = null;
		
		try {
			session = sqlSessionFactory.openSession();
			jjimLlist = session.selectList("Jjimlist", id);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return jjimLlist;
	}

	
	

}
