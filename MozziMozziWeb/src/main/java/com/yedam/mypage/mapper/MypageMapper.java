package com.yedam.mypage.mapper;

import java.util.List;

import com.yedam.mypage.vo.MyReviewVO;

public interface MypageMapper {
	
	public int reviewAdd(MyReviewVO vo); // 리뷰추가
	public int updateReviewReg(MyReviewVO vo); // 리뷰 등록 상태 업데이트
	public List<MyReviewVO> reviewList(String id); // 내가 작성한 리뷰 리스트

}
