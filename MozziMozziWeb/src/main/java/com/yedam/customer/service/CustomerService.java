package com.yedam.customer.service;

import java.util.List;

import com.yedam.customer.vo.NoticeVO;
import com.yedam.customer.vo.QnaVO;

public interface CustomerService {
	
	public int addNotice (NoticeVO notice); //공지사항 등록
    
	public List<QnaVO> viewQnA(); //고객센터문의 출력 
	
	
}
