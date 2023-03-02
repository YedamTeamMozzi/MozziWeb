package com.yedam.customer.mapper;

import java.util.List;

import com.yedam.customer.vo.NoticeVO;

public interface CustomerMapper {
	
	public int insertNotice (NoticeVO notice); //공지사항 등록
	
	public List<NoticeVO> selectNotice (); //공지사항 리스트
	
}
