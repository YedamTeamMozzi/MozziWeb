package com.yedam.mypage.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.customer.service.CustomerService;
import com.yedam.customer.service.CustomerServiceImpl;

public class MyInquiryControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String  logId = req.getParameter("mid");
		
		 //목록	서비스.java      이름 지정         서비스impl.java
		CustomerService service = new CustomerServiceImpl();
 //기능  호출               이름지정          서비스.java에 추가한 이름
		req.setAttribute("list", service.getMyQna(logId));
		
		return "mypage/myInquiry.tiles";
	}

} 