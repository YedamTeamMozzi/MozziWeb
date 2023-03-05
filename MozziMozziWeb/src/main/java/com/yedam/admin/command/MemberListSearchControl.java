package com.yedam.admin.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.admin.service.AdminService;
import com.yedam.admin.service.AdminServiceImpl;
import com.yedam.admin.vo.AdminMemberVO;
import com.yedam.admin.vo.AdminOrderVO;
import com.yedam.common.Command;
import com.yedam.member.vo.MemberVO;
import com.yedam.product.service.ProductService;
import com.yedam.product.service.ProductServiceImpl;
import com.yedam.product.vo.ProductVO;

public class MemberListSearchControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		String search =req.getParameter("search"); // 검색값을 불러옴
		
		
		
		AdminService service = new AdminServiceImpl();
		System.out.println(search);
		
	    req.setAttribute("search", service.searchMemberList(search));
		
		return "admin/memberListSearch.tiles";
	}

}
