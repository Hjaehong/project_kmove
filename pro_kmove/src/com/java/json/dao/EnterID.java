package com.java.json.dao;


import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.java.group.enter.dao.GroupEnterBoardDao;
import com.java.json.action.JsonID;
import com.java.myBatis.SqlManager;

public class EnterID{
	private static SqlSessionFactory sqlSessionFactory = SqlManager.getInstance();
	private static SqlSession session;
	private static EnterID instance = new EnterID();
	
	public static EnterID getInstance() {		
		return instance;	
	}
	
	public int enterReq(String id, int board_number) {
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("id", id);
		map.put("board_number", board_number);
		
		int check =0;
		try {
			session = sqlSessionFactory.openSession();
			check = session.insert("enterReq",map);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return check;
	}
	public List<JsonID> getList(int board_number){
		List<JsonID> jsonid = null;
			try {
				session = sqlSessionFactory.openSession();
				jsonid = session.selectList("enterlist",board_number);
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				session.close();
			}
		return jsonid;
	}
	public int delete(String id, String board_number) {
		int check = 0;
		HashMap<String, Object> hmap = new HashMap<String, Object>();
		hmap.put("id", id);
		hmap.put("board_number", board_number);
		
		try {
			session = sqlSessionFactory.openSession();
			check = session.delete("cancel", hmap);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return check;
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
}
