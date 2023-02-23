<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!--****************************-->
		<!--****************************-->
		<!-- top.jsp 로 복사할때 시작점 -->
		<!--****************************-->
		<!--****************************-->
	    <div id="wrap" style="display:none;border:1px solid #DDDDDD;width:500px;margin-top:500px; margin-left: 200px"></div>
    	<div style="height:10px;"></div>
	    
	    
	    <!--전체 페이지 Wrapper-->
	    <div id="top_wrapper">
	        <!--header Wrapper(로고 상단 Div(추가 Contents 대비용), Hompage Logo)-->
	        <div id="header">
	            <!--ADD CONTENTS-->
	            <div id="headerTopMenu">
	                <!--필요시 문의-->
	            </div>
	            <!--로고 이미지 Div-->
	            <div id="homeLogo">
								<a id="logo_a" href="main.do">
									<img id="logoImg" src="./img/index/banner/mozzi3.png" alt="이미지 로딩 불가!">

									<!--LOGO-->
								</a>
	            </div>
	        </div>
	        <!--메뉴 네비게이션(sticky)-->
	        <div id="menuNav">
	            <!--nav 구성 :1개의 슬라이드 메뉴, 베스트, 신상품, 고객지원, 검색창(search icon), shopping icon(장바구니)-->
	            <div id="nav_Div">
	                <ul class="nav_main">
	                    <li id="nav_start">
	                        <a class="nav_a" id="ricecakeNav">
	                            <i class="fas fa-bars"></i>
	                            <span class="txt">모찌</span>
																</a>
									<div id="nav_category">
										<ul>
											<li><a href="#" class="category_menu">전체모찌보기</a></li>
											<li><a href="#" class="category_menu">선물모찌세트</a></li>
											<li><a href="#" class="category_menu">퓨전모찌</a></li>
											<li><a href="#" class="category_menu">노멀모찌</a></li>
											<li><a href="#" class="category_menu">모찌케이크</a></li>
											<li><a href="#" class="category_menu">모찌 전통음료</a></li>

										</ul>
									</div>
	                    </li>
	                    <li>
	                        <a class="nav_a">
	                            <span class="txt">모찌베스트</span>
	                        </a>
	                    </li>
	                    <li>
	                        <a class="nav_a">
	                            <span class="txt">모찌선물세트</span>
	                        </a>
	                    </li>
	                    <li>
	                        <a class="nav_a">
	                            <span class="txt">모찌케이크</span>
	                        </a>
	                    </li>
	                    <li>
	                        <a class="nav_a">
	                            <span class="txt">모찌전통음료</span>
	                        </a>
	                    </li>
											<li>
												<div id="search_div" class="nav_a">
													<form action="" id="search_form">
															<label>
																	<input type="text" id="search_input"  autocomplete=”off”>
																	<i class="fas fa-search"></i>
															</label>
													</form>
											</div>

											</li>
						<li id="active_btn_li">
							<ul id="active_btn_wrapper" class="right">
								<li>
										<a href="login.do"><i class="fas fa-user"></i></a>
										
								</li>
								<li>
									<a href="cart.do"><i class="fas fa-shopping-cart"></i></a>
								</li>
								<li>
									<a href="/product/mypage_review.html"><i class="fas fa-sign-in-alt"></i></a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
	        </div>
	</div>

	

		<!--****************************-->
		<!--****************************-->
		<!-- top.jsp 로 복사할때 끝점 -->
		<!--****************************-->
		<!--****************************-->