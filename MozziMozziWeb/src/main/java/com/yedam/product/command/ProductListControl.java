package com.yedam.product.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.product.service.ProductService;
import com.yedam.product.service.ProductServiceImpl;

public class ProductListControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
 //목록	인터페이스(타입)     변수            구현클래스(인터페이스는 구현x 인스턴스생성하여 할당할 수 없)
		ProductService service = new ProductServiceImpl();
 //기능  호출       jsp에서items에지정한이름   인터페이스에 지정할 메소드
		req.setAttribute("list", service.productList());
		return "product/productList.tiles";
	}

}
