package com.yedam.customer.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.customer.service.CustomerService;
import com.yedam.customer.service.CustomerServiceImpl;
import com.yedam.customer.vo.NoticePagingVO;

public class CustomerNoticeControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 목록 서비스.java 이름 지정 서비스impl.java
				CustomerService service = new CustomerServiceImpl();
				String nowPage = req.getParameter("nowPage");
				String cntPerPage = req.getParameter("cntPerPage");

				int total = service.countNotice();
				
				if (nowPage == null && cntPerPage == null) {
					nowPage = "1";
					cntPerPage = "10";
				} else if (nowPage == null) {
					nowPage = "1";
				} else if (cntPerPage == null) { 
					cntPerPage = "10";
				}
				
				NoticePagingVO vo = new NoticePagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
				
				req.setAttribute("paging", vo);
				req.setAttribute("noticelist", service.selectpageNotice(vo));

		return "customer/customerNotice.tiles";
	}

}   

