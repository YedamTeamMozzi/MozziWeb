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

import com.yedam.admin.command.MemberListControl;
import com.yedam.admin.command.ProductAddControl;
import com.yedam.admin.command.ProductListControl;
import com.yedam.admin.command.ProductManageControl;
import com.yedam.customer.command.CustomerFnaControl;
import com.yedam.customer.command.CustomerNoticeControl;
import com.yedam.customer.command.CustomerQnaControl;
import com.yedam.customer.command.ReviewManageControl;
import com.yedam.member.command.LoginControl;
import com.yedam.member.command.SignUpControl;
import com.yedam.member.command.SignUpFormControl;
import com.yedam.mypage.command.MyPageInfoCheckControl;
import com.yedam.mypage.command.MyPageInfoControl;
import com.yedam.mypage.command.ReviewWriteFormControl;
import com.yedam.product.command.CartControl;
import com.yedam.product.command.ProductDetailControl;

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
		map.put("/signUpForm.do", new SignUpFormControl());  // // 회원가입 페이지 signUPForm.jsp
		map.put("/signUp.do", new SignUpControl()); // 회원가입 post방식
		
		// 상품 Product
		map.put("/productDetail.do", new ProductDetailControl()); // 제품 상세 페이지
		map.put("/cart.do", new CartControl()); // 장바구니
		
		// 마이페이지
		map.put("/myInfo.do", new MyPageInfoControl()); // 회원정보 - 비밀번호 입력폼
		map.put("/myInfoCheck.do", new MyPageInfoCheckControl()); // 회원정보 수정
		map.put("/revieWriteForm.do", new ReviewWriteFormControl()); // 리뷰쓰기 페이지
		map.put("/reviewManage.do", new ReviewManageControl()); // 리뷰쓰기 페이지
		
		// 관리자 
		map.put("/memberList.do", new MemberListControl()); // 회원리스트
		map.put("/productAdd.do", new ProductAddControl()); // 관리자 : 상품등록
		map.put("/productList.do", new ProductListControl()); // 관리자 : 상품 리스트(조회)
		map.put("/productManage.do", new ProductManageControl()); // 관리자 : 상품관리(수정, 삭제)
		
		// 고객센터
		map.put("/customerFna.do", new CustomerFnaControl()); // F&A
		map.put("/customerQna.do", new CustomerQnaControl()); // Q&A
		map.put("/customerNotice.do", new CustomerNoticeControl()); // 공지사항
	
		System.out.println("선아");
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
