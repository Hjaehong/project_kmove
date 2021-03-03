package com.java.trigDao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.java.myBatis.SqlManager;
import com.java.trigDto.TrigDto;

public class TrigDao {
	private static SqlSessionFactory sqlSessionFactory = SqlManager.getInstance();
	private static SqlSession session;
	private static TrigDao instance = new TrigDao();
	
	public static TrigDao getInstance() {		
		return instance;	
	}
	
	public List<TrigDto> allim(String id) {
		List<TrigDto> board_number=null;
		
		try {
			session = sqlSessionFactory.openSession();
			board_number = session.selectList("isNew", id);
			System.out.println("trigdao 알림  : " + board_number.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return board_number;
	}
	
	public void changeOC(String id, String board_number) {
		HashMap<String, Object> hmap = new HashMap<String, Object>();
		hmap.put("id", id);
		hmap.put("board_number", board_number);
		
		try {
			session = sqlSessionFactory.openSession();
			session.update("changeOC",hmap);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
	}
	
	public int changeOk(String id, String board_number) {
		int check = 0;
		HashMap<String, Object> hmap = new HashMap<String, Object>();
		hmap.put("id", id);
		hmap.put("board_number", board_number);
		try {
			session = sqlSessionFactory.openSession();
			check = session.update("changeOk",hmap);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return check;
	}
	public void updateMasterID(String id, String board_number, String masterID) {
		HashMap<String, String> hmap = new HashMap<String, String>();
		hmap.put("id", id);
		hmap.put("board_number", board_number);
		hmap.put("masterID", masterID);
		try {
			session =sqlSessionFactory.openSession();
			session.update("updateMasterID", hmap);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
	}
	public void changeDel() {
		try {
			session = sqlSessionFactory.openSession();
			session.delete("changeDel");
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
	}

	public void inSub(int board_number, String sub) {
		HashMap<Object, Object> hMap = new HashMap<Object, Object>();
		hMap.put("board_number", board_number);
		hMap.put("sub", sub);
		try {
			session = sqlSessionFactory.openSession();
			session.update("inSub", hMap);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
	}

	public List<TrigDto> myEnterList(String id) {
		List<TrigDto> myEnterL = null;
		try {
			session = sqlSessionFactory.openSession();
			myEnterL = session.selectList("myEnterList", id);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return myEnterL;
	}
}
