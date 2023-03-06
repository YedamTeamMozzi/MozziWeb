package com.yedam.customer.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.customer.service.CustomerService;
import com.yedam.customer.service.CustomerServiceImpl;



public class CustomerQnaDeleteControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		
		
		int qno = Integer.parseInt(req.getParameter("qnaNO"));


		CustomerService service = new CustomerServiceImpl();
		
		
		  int r = service.deleteQna(qno);
		  
		  if(r>0) {
			  return "customerQna.do";
		  }else {
			  return "main.do";
		  }
		
		  //return "customer/customerNoticeIn.tiles";
	
	
	
	}

}
