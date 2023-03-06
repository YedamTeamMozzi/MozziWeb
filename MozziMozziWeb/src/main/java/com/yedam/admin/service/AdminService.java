package com.yedam.admin.service;

import java.util.List;

import com.yedam.admin.vo.AdminMemberVO;
import com.yedam.admin.vo.AdminOrderVO;
import com.yedam.admin.vo.AdminPagingVO;
import com.yedam.admin.vo.AdminProductVO;
import com.yedam.admin.vo.AdminReviewVO;


public interface AdminService {

	//한 건당 들어오니까 int,
	//등록이니까 addProduct로 내가 지정
	// NoticeVO 타입으로 들어오고 Product라고 내가 지정.	
	public int addProduct(AdminProductVO product);
	
	//관리자 상품목록
	public List<AdminProductVO> adminPordList();
	
	//관리자 상품조회
	public AdminProductVO getProduct(String prodCode);
	
	//상품수정
	public int modifyProduct(AdminProductVO product);
	
	//상품삭제 pCode는 DeleteProduct에서 지정한 값                    
	public int removeProduct(String pCode);
	
	//관리자 리뷰전체목록
	public List<AdminReviewVO> reviewList();

	//주문 상품 전체조회
		public List<AdminOrderVO> OrderList();
		//주문검색
		public List<AdminOrderVO> searchOrderList(String OrderSearch);
		// 주문취소
		public int orderCancel(String orderNo); 
		// 주문 상태변경
		public int orderUpdate(String orderNo);

		public int orderUpdate2(String orderNo); 
		//관리자 멤버 리스트
		public List<AdminMemberVO> memberList();
		//회원 id검색
		public List<AdminMemberVO> searchMemberList(String search);
		// 멤버 총 갯수
		public int countMember();


		// 페이징 처리 멤버 조회
		public List<AdminPagingVO> selectpageMember(AdminPagingVO vo);

		
		
}
