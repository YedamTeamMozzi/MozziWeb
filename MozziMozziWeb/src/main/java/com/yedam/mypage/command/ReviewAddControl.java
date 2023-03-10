package com.yedam.mypage.command;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.yedam.common.Command;
import com.yedam.mypage.service.MypageService;
import com.yedam.mypage.service.MypageServiceImpl;
import com.yedam.mypage.vo.MyReviewVO;

public class ReviewAddControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 글등록처리.
		// 파일 경로
		String savePath = req.getServletContext().getRealPath("/img/review"); // 경로 잘보기
		// 파일 사이즈 15MB
		int maxSize = (1024 * 1024 * 10);
		// encoding 방식 (charset)
		String encoding = "utf-8";

		String id = null;
		int r = 0;
		
		try {
			// 파일업로드 서블릿.
			MultipartRequest multi = //
					new MultipartRequest(req, savePath, maxSize, encoding, new DefaultFileRenamePolicy());

	
			String userId = multi.getParameter("userId");
			String content = multi.getParameter("content");
			//String reviewImg = multi.getParameter("reviewImg");
			int likeStar = Integer.parseInt(multi.getParameter("likeStar"));
			String orderNo = multi.getParameter("orderNo");
			String prodCode = multi.getParameter("prodCode");
			String prodName = multi.getParameter("prodName");

			
			// 파일이름
			String reviewImg = "";

			Enumeration<?> main = multi.getFileNames();
			
			
			while (main.hasMoreElements()) {
				String file = (String) main.nextElement();
				reviewImg = multi.getFilesystemName(file);
				//System.out.print(imgNames);
			}
			
			// detail 이미지가 main이미지보다 먼저 나옴
			//System.out.println("main : " + img[1]);
			//System.out.println("detail : " + img[0]);
			
			// ProductVO 생성.
			MyReviewVO vo = new MyReviewVO();
			
			//set에ProductVO에있는요소이름붙이기(위에지정한이름)	
			vo.setUserId(userId);
			vo.setReContent(content);
			vo.setReImage(reviewImg);
			vo.setStarRating(likeStar);
			vo.setOrderNo(orderNo);
			vo.setProdCode(prodCode);
			vo.setProdName(prodName);

			id = vo.getUserId();
			
			MypageService service = new MypageServiceImpl();
			r = service.reviewAdd(vo);
			
			// 리뷰 insert시 product_orderItem의 reviewReg컬럼이 yes로 update 됨
			// product_orderItem where절 주문번호, 상품코드 이용
			service.updateReviewReg(vo);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if (r > 0) {
			// 1건이상 성공시 retCode : Success 주기
			return "{\"retCode\":\"Success\"}.json";
		} else {
			// 1건이상 실패시 retCode : Fail 주기
			return "{\"retCode\":\"Fail\"}.json";
		}

	}

}
