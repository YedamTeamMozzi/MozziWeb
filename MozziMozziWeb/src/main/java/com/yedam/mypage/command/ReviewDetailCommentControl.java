package com.yedam.mypage.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.mypage.service.MypageService;
import com.yedam.mypage.service.MypageServiceImpl;
import com.yedam.mypage.vo.MyReviewVO;

public class ReviewDetailCommentControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int reNo = Integer.parseInt(req.getParameter("reNo"));
		
		MypageService service = new MypageServiceImpl();
		
		MyReviewVO vo = new MyReviewVO();
		vo = service.reviewDetail(reNo);
		
		req.setAttribute("review", vo);
		
		return "mypage/reviewDetailComment.tiles";
	}

}
