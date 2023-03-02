package com.yedam.customer.service;

import java.util.List;

import com.yedam.customer.vo.NoticeVO;

public interface CustomerService {
	
	public int addNotice (NoticeVO notice); //공지사항 등록
	
	public List<NoticeVO> listNotice (); //공지사항 리스트
	
	public  NoticeVO getNotice (String ntno); //공지사항 단건 조회
	
	public int updateNotice(NoticeVO notice); //공지사항 수정
	
}
