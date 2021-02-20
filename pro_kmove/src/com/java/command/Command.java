package com.java.command;

import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public interface Command { 
	
	public static final Logger logger=Logger.getLogger(Command.class.getName());
	public String logMsg = "MyLogMsg--------";	
	
	
	
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable;
}
