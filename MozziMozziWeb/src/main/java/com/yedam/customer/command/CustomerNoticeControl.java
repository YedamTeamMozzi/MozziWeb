package com.yedam.customer.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yedam.common.Command;
import com.yedam.customer.service.CustomerService;
import com.yedam.customer.service.CustomerServiceImpl;
import com.yedam.customer.vo.NoticeVO;
import com.yedam.member.sevice.MemberService;
import com.yedam.member.sevice.MemberServiceImpl;
import com.yedam.member.vo.MemberVO;

public class CustomerNoticeControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	

		
		
		
		return "customer/customerNotice.tiles";
	}

}

