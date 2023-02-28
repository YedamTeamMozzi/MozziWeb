package com.yedam.member.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.member.sevice.MemberService;
import com.yedam.member.sevice.MemberServiceImpl;
import com.yedam.member.vo.MemberVO;

public class IdFindControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("user_name");
		String email = req.getParameter("user_email");
		
		System.out.println("name = "+name);
		System.out.println("email = "+email);
		MemberService service = new MemberServiceImpl();
		MemberVO find = service.getIdFind(name, email);
		if( find !=null) {
			req.setAttribute("fvo",find);
			return "idFindInfo.do";
		}else {
			System.out.println("실패");
			return "member/idFind.tiles";
		}
		
		
		
	}

}
