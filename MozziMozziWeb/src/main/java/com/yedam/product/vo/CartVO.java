package com.yedam.product.vo;

import lombok.Data;

@Data
public class CartVO {

	private int cartId; // 장바구니 id
	private String userId; // 유저 id
	private String prodCode; // 상품코드
	private int cartQuantity; // 수량
	private int cartPrice; // 수량 * 가격
	
}
