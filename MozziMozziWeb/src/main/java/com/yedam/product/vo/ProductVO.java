package com.yedam.product.vo;

import lombok.Data;

@Data
public class ProductVO {
	private String prodCode; // 상품코드
	private String prodName; // 상품명
	private String prodPrice; // 상품가격
	private String prodCategory; // 카테고리
	private String sellCheck; // 판매여부(게시글 숨겨지는 여부)
	private String mainImage; // 메인이미지(썸네일)
	private String detailImage; // 상세이미지
}
