package com.yedam.product.service;

import java.util.List;

import com.yedam.product.vo.CartVO;
import com.yedam.product.vo.ProductVO;

public interface ProductService {
	// list형식으로 ProductVO에 있는 객체들을 불러오는 것이 productList()
	public List<ProductVO> productList();
	//제품별 상세페이지
	public ProductVO getProduct(String prodCode);
	
	
	public int addCart(CartVO cart);
}
