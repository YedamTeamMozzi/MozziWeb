package com.yedam.customer.mapper;

import java.util.List;

import com.yedam.customer.vo.NoticeVO;
import com.yedam.customer.vo.QnaVO;
import com.yedam.product.vo.ProductVO;

public interface CustomerMapper {
	
	public int insertNotice (NoticeVO notice); //공지사항 등록
	
	public List<QnaVO> viewQnA();// qna 목록  
}
