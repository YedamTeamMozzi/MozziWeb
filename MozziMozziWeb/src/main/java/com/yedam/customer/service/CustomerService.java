package com.yedam.customer.service;

import com.yedam.customer.vo.NoticeVO;

public interface CustomerService {
	
	public int addNotice (NoticeVO notice); //공지사항 등록
	
	public NoticeVO listNotice (NoticeVO notice); //공지사항 리스트
	
}
