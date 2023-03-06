package com.yedam.mypage.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.mypage.service.MypageService;
import com.yedam.mypage.service.MypageServiceImpl;
import com.yedam.mypage.vo.ReviewReplyVO;

public class ReplyAddControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String prodCode = req.getParameter("prodCode");
		String userId = req.getParameter("userId");
		String content = req.getParameter("content");
		int reNo = Integer.parseInt(req.getParameter("reNo"));
		
		ReviewReplyVO reply = new ReviewReplyVO();
		reply.setProdCode(prodCode);
		reply.setUserId(userId);
		reply.setContent(content);
		reply.setReNo(reNo);
		
		MypageService service = new MypageServiceImpl();
		int r = service.replyAdd(reply);
		
		if (r > 0) {
			// 1건이상 성공시 retCode : Success 주기
			return "{\"retCode\":\"Success\"}.json";
		} else {
			// 1건이상 실패시 retCode : Fail 주기
			return "{\"retCode\":\"Fail\"}.json";
		}
		
	}

}
