package com.yedam.customer.mapper;

import java.util.List;

import com.yedam.customer.vo.NoticePagingVO;
import com.yedam.customer.vo.NoticeVO;
import com.yedam.customer.vo.QnaPagingVO;
import com.yedam.customer.vo.QnaVO;
import com.yedam.product.vo.ProductVO;

public interface CustomerMapper {
	
	public int insertNotice (NoticeVO notice); //공지사항 등록


	public List<QnaVO> viewQnA();// qna 목록  

	public List<NoticeVO> selectNotice (); //공지사항 리스트
	
	public  NoticeVO getNotice (String ntno); //공지사항 단건 조회

	public int updateNotice(NoticeVO notice); //공지사항 수정
	
	public int deleteNotice(int no); //공지사항 삭제
	
	public int addQna (QnaVO qna); //qna 등록
	
	public  QnaVO getQna (String qnano); //문의 단건조회

	public int updateQna(QnaVO qnaup); //문의 수정
	
	public List<QnaVO> getMyQna(String userId); //myQna 리스트
	
	// 게시물 총 갯수
	public int countBoard();

	// 페이징 처리 게시글 조회
	public List<QnaPagingVO> selectBoard(QnaPagingVO vo);
	
	public int deleteQna(int qno); //공지사항 삭제
	
	public int viewCountqna(int nno); //문의 조회수 증가
	
	public int viewCountNotice(int nno1); //공지 조회수 증가
	
	// 공지사항 총 갯수
	public int countNotice();

	// 페이징 처리 공지사항 조회
	public List<NoticePagingVO> selectpageNotice(NoticePagingVO vo);

}
