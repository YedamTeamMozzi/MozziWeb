package com.yedam.member.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;

public class IdFindControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name = req.getParameter("user_name");
		String email = req.getParameter("user_email");
		
		
		
		if(name) {
			return "{\"retCode\" : \"Success\"}.json";
		} else {
			return "{\"retCode\" : \"Fail\"}.json";
		}
	}

}
