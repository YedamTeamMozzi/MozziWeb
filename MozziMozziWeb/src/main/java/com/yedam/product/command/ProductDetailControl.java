package com.yedam.product.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.product.service.ProductService;
import com.yedam.product.service.ProductServiceImpl;

public class ProductDetailControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//             productList.jsp에서 dduck라고 줌
		String dduck = req.getParameter("dduck");
		
		ProductService service = new ProductServiceImpl();
		req.setAttribute("vo", service.getProduct(dduck));
		return "product/productDetail.tiles";
	}

}
