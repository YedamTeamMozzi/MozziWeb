package com.yedam.mypage.service;


import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.yedam.common.DataSource;
import com.yedam.mypage.mapper.MypageMapper;
import com.yedam.mypage.vo.MyReviewVO;
import com.yedam.mypage.vo.ReviewReplyVO;


public class MypageServiceImpl implements MypageService {

	
	SqlSession session = DataSource.getInstance().openSession(true);
	
	// session.selectOne("com.yedam.notice.mapper.NoticeMapper.getNotice")
	// NoticeService service = new NoticeServiceImpl(); 와 같은 원리인듯
	// NoticeMapper.java와 NoticeMapper.xml 을 매핑해주는 역할인듯?
	MypageMapper mapper = session.getMapper(MypageMapper.class);

	@Override
	public int reviewAdd(MyReviewVO vo) {
		
		return mapper.reviewAdd(vo);
	}

	@Override
	public int updateReviewReg(MyReviewVO vo) {
		
		return mapper.updateReviewReg(vo);
	}

	@Override
	public List<MyReviewVO> reviewList(String id) {
		
		return mapper.reviewList(id);
	}

	@Override
	public MyReviewVO reviewDetail(int reNo) {
		return mapper.reviewDetail(reNo);
	}

	@Override
	public int modifyReview(MyReviewVO vo) {
		
		return mapper.modifyReview(vo);
	}

	@Override
	public int deleteReview(int reNo) {
		return mapper.deleteReview(reNo);
	}

	@Override
	public int replyAdd(ReviewReplyVO review) {
		return mapper.replyAdd(review);
	}

	@Override
	public List<ReviewReplyVO> replyList(MyReviewVO vo) {
		// TODO Auto-generated method stub
		return mapper.replyList(vo);
	}
	

}
