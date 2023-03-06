package com.yedam.mypage.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.mypage.service.MypageService;
import com.yedam.mypage.service.MypageServiceImpl;
import com.yedam.mypage.vo.MyReviewVO;

public class ReviewModifyControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int reNo = Integer.parseInt(req.getParameter("reNo"));
		String content = req.getParameter("content");
		int like = Integer.parseInt(req.getParameter("like"));
		
		MypageService service = new MypageServiceImpl();
		
		MyReviewVO vo = new MyReviewVO();
		vo.setReNo(reNo);
		vo.setReContent(content);
		vo.setStarRating(like);
		
		int r = service.modifyReview(vo);
		
		if (r > 0) {
			// 1건이상 성공시 retCode : Success 주기
			return "{\"retCode\":\"Success\"}.json";
		} else {
			// 1건이상 실패시 retCode : Fail 주기
			return "{\"retCode\":\"Fail\"}.json";
		}
	}

}
