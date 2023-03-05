package com.yedam.customer.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.customer.service.CustomerService;
import com.yedam.customer.service.CustomerServiceImpl;
import com.yedam.customer.vo.QnaVO;


public class CustomerQnaUpdateControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		int no = Integer.parseInt(req.getParameter("qnaNO"));
		String title =req.getParameter("qna_title");
		String content = req.getParameter("qna_content");
		String category = req.getParameter("muni");
	
		
		QnaVO qnaup = new QnaVO();
		
		qnaup.setQnaNO(no);
		qnaup.setQnaContent(content);
		qnaup.setQnaTitle(title);
		qnaup.setCategory(category);
		
	
		
	
		
		
		CustomerService service = new CustomerServiceImpl();
		
		
		  int r = service.updateQna(qnaup);
		  System.out.println("updateQna");
		  if(r>0) {
			  return "customerQna.do";
		  }
		
		return "customer/customerQnaIn.tiles";
	}
		
	
}
