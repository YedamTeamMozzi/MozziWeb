package com.yedam.mypage.service;

import java.util.List;

import com.yedam.mypage.vo.MyReviewVO;

public interface MypageService {
	public int reviewAdd(MyReviewVO vo);
	public int updateReviewReg(MyReviewVO vo); // 리뷰 등록 상태 업데이트
	public List<MyReviewVO> reviewList(String id); // 내가 작성한 리뷰 리스트
	
}
