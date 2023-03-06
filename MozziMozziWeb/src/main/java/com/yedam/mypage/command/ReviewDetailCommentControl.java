package com.yedam.mypage.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.mypage.service.MypageService;
import com.yedam.mypage.service.MypageServiceImpl;
import com.yedam.mypage.vo.MyReviewVO;
import com.yedam.mypage.vo.ReviewReplyVO;

public class ReviewDetailCommentControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int reNo = Integer.parseInt(req.getParameter("reNo"));
		
		MypageService service = new MypageServiceImpl();
		
		MyReviewVO vo = new MyReviewVO();
		vo = service.reviewDetail(reNo);
		
		List<ReviewReplyVO> reply = new ArrayList<ReviewReplyVO>();
		reply = service.replyList(vo);
		
		req.setAttribute("review", vo);
		req.setAttribute("replyList", reply);
		
		return "mypage/reviewDetailComment.tiles";
	}

}
