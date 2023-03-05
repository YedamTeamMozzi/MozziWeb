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

public class ReviewManageControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id = req.getParameter("id");
		
		MypageService service = new MypageServiceImpl();
		
		List<MyReviewVO> reviewList = new ArrayList<>();
		
		reviewList = service.reviewList(id);
		
		req.setAttribute("reviewList", reviewList);
		
		return "mypage/reviewManage.tiles";
	}

}
