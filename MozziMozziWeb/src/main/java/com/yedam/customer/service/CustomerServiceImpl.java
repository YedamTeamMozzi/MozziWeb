package com.yedam.customer.service;


import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.yedam.common.DataSource;
import com.yedam.customer.mapper.CustomerMapper;
import com.yedam.customer.vo.NoticePagingVO;
import com.yedam.customer.vo.NoticeVO;
import com.yedam.customer.vo.QnaPagingVO;
import com.yedam.customer.vo.QnaVO;


public class CustomerServiceImpl implements CustomerService {

	
	SqlSession session = DataSource.getInstance().openSession(true);
	
	// session.selectOne("com.yedam.notice.mapper.NoticeMapper.getNotice")
	// NoticeService service = new NoticeServiceImpl(); 와 같은 원리인듯
	// NoticeMapper.java와 NoticeMapper.xml 을 매핑해주는 역할인듯?
	CustomerMapper mapper = session.getMapper(CustomerMapper.class);

	@Override
	public int addNotice(NoticeVO notice) {
		
		return mapper.insertNotice(notice);
	}
	
	@Override
	public List<QnaVO> viewQnA() {
		
		return mapper.viewQnA();
	}


	@Override
	public NoticeVO getNotice(String no) {
	
		return mapper.getNotice(no);
	}

	@Override
	public int updateNotice(NoticeVO notice) {
		
		return mapper.updateNotice(notice);
	}

	@Override
	public List<NoticeVO> listNotice() {
		
		return mapper.selectNotice();
	}

	@Override
	public int deleteNotice(int no) {
  
		return mapper.deleteNotice(no);
    
	}

	@Override
	public int addQna(QnaVO qna) {

		return mapper.addQna(qna);
	}

	@Override
	public QnaVO getQna(String qnano) {
		
		return mapper.getQna(qnano);
	}

	@Override
	public List<QnaVO> getMyQna(String userId) {
		
		return mapper.getMyQna(userId);
  }
  
  @Override
	public int countBoard() {
		return mapper.countBoard();
	}

	@Override
	public List<QnaPagingVO> selectBoard(QnaPagingVO vo) {
		return mapper.selectBoard(vo);
	}

	@Override
	public int updateQna(QnaVO qnaup) {
		
		return mapper.updateQna(qnaup);
	}

	@Override
	public int deleteQna(int qno) {

		return mapper.deleteQna(qno);
	}

	@Override
	public int viewCountqna(int nno) {

		return mapper.viewCountqna(nno);
	}

	@Override
	public int countNotice() {
		return mapper.countNotice();
	}

	@Override
	public List<NoticePagingVO> selectpageNotice(NoticePagingVO vo) {
		return mapper.selectpageNotice(vo);
	}

	@Override
	public int viewCountNotice(int nno1) {

		return mapper.viewCountNotice(nno1);
	}

	

}
