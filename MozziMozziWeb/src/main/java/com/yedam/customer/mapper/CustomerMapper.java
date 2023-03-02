package com.yedam.customer.mapper;

import com.yedam.customer.vo.NoticeVO;

public interface CustomerMapper {
	
	public int insertNotice (NoticeVO notice); //공지사항 등록
	
	public NoticeVO selectNotice (NoticeVO notice); //공지사항 리스트
	
}
