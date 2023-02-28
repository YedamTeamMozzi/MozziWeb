package com.yedam.admin.service;

import com.yedam.admin.vo.AdminProductVO;

public interface AdminService {

	//한 건당 들어오니까 int,
	//등록이니까 addProduct로 내가 지정
	// NoticeVO 타입으로 들어오고 Product라고 내가 지정.	
	public int addProduct(AdminProductVO product);
}
