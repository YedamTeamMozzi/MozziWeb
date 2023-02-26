package com.yedam.product.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yedam.product.vo.CartVO;
import com.yedam.product.vo.ProductVO;

public interface ProductMapper {

	public List<ProductVO> getList(); // 상품 리스트
	public ProductVO getProduct(String prodCode); // 단건조회
	
	public int addCart(CartVO cart);
	
}
