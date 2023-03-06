package com.yedam.mypage.vo;

import lombok.Data;

@Data
public class ReviewReplyVO {

	private int replyNo; // 댓글번호
	private int reNo; // 리뷰 번호
	private String prodCode; // 상품코드
	private String userId; // 유저아이디
	private String regDate; // 댓글 등록일자
	private String content; // 리뷰 내용
	
}
