package com.yedam.common;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.member.command.LoginControl;
import com.yedam.member.command.SignUpControl;
import com.yedam.mypage.command.MyPageInfoCheckControl;
import com.yedam.mypage.command.MyPageInfoControl;
import com.yedam.product.command.ProductDetail;
import com.yedam.product.command.ProductList;

public class FrontController extends HttpServlet {

	private Map<String, Command> map;
	private String charset;

	public FrontController() {
		map = new HashMap<String, Command>();
	}

	@Override
	public void init(ServletConfig config) throws ServletException {

		charset = config.getInitParameter("charset");

		map.put("/main.do", new MainControl()); // 메인페이지 main.jsp
		
		// 회원 Mamber
		map.put("/login.do", new LoginControl()); // 로그인 페이지 login.jsp
		map.put("/signUp.do", new SignUpControl()); // 회원가입 페이지 signup.jsp
		
		// 마이페이지
		map.put("/myInfo.do", new MyPageInfoControl()); 
		map.put("/myInfoCheck.do", new MyPageInfoCheckControl()); // 회원정보 수정
		
		
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding(charset);

		String uri = req.getRequestURI();
		String context = req.getContextPath();
		String page = uri.substring(context.length());
		System.out.println(page);

		Command command = map.get(page);
		String viewPage = command.exec(req, resp);
		// notice/noticeList.tiles

		if (viewPage.endsWith(".tiles")) {
			RequestDispatcher rd = req.getRequestDispatcher(viewPage);
			rd.forward(req, resp);

		} else if (viewPage.endsWith(".do")) {
			resp.sendRedirect(viewPage);

		} else if (viewPage.endsWith(".json")) {
			resp.setContentType("text/json;charset=utf-8");
			resp.getWriter().print(viewPage.substring(0, viewPage.length() - 5));
		}

	}
}
