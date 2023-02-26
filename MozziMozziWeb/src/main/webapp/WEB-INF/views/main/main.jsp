<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

  <style>
    #goodslist_best_ul {
      list-style: none;
    }
  </style>
  <header id="top"></header>

  <!--******************-->
  <!--작업 및 복붙 구역-->
  <!--******************-->
  <main>
    <!-- 배너 구역-->
    <div id="bannerWrapper">
      <img src="./img/index/banner/20230206_pc.jpg" style="height: 400px; width: 1500px;" alt="banner slider" />
      <div id="banner_btn_wrapper">
        <span> </span>
      </div>
    </div>

    <!-- 베스트상품 구역-->
    <div class="goodslist" id="goodslist_best">
      <div class="goodslist_tit">
        <a href="#" class="goodslist_btn">
          <h3>베스트 모찌</h3>
        </a>
        <span class="goodslist_detail">
          모찌모찌에서 제일 잘 나가는 모찌</span>
      </div>

      <ul id="goodslist_best_ul">
        <li>
          <a href="./product/goods_view.html">
            <img src="img/index/product_sample/범벅초코크림떡.webp" />
          </a>
          <div class="goods_info">
            <a href="#">
              <span class="name"> 범벅초코크림떡 (맛있는 찹쌀떡) </span>
            </a>
            <span class="price"> 13,900원 </span>
          </div>
        </li>

        <li>
          <a href="#">
            <img src="img/index/product_sample/티라미슈크림떡.webp" />
          </a>
          <div class="goods_info">
            <a href="#">
              <span class="name"> 티라미슈 크림떡(티라미수 찹쌀떡) </span>
            </a>
            <span class="price"> 15,900원 </span>
          </div>
        </li>

        <li>
          <a href="#">
            <img src="img/index/product_sample/흑심떡.webp" />
          </a>
          <div class="goods_info">
            <a href="#">
              <span class="name"> 흑심떡(맛있는 찹쌀떡) </span>
            </a>
            <span class="price"> 15,900원 </span>
          </div>
        </li>

        <li>
          <a href="#">
            <img src="img/index/product_sample/녹차크림떡.webp" />
          </a>
          <div class="goods_info">
            <a href="#">
              <span class="name"> 녹차 크림떡(맛있는 찹쌀떡) </span>
            </a>
            <span class="price"> 15,900원 </span>
          </div>
        </li>
      </ul>
    </div>

    <!-- 신상품 구역 -->
    <div class="goodslist" id="goodslist_new">
      <div class="goodslist_tit">
        <a href="#" class="goodslist_btn">
          <h3>신상 모찌</h3>
        </a>
        <span class="goodslist_detail">당연히 따끈따끈한 새로 나온 모찌!</span>
      </div>
      <ul id="goodslist_new_ul">

        <ul id="goodslist_best_ul">
          <li>
            <a href="./product/goods_view.html">
              <img src="img/index/product_sample/범벅초코크림떡.webp" />
            </a>
            <div class="goods_info">
              <a href="#">
                <span class="name"> 범벅초코크림떡 (맛있는 찹쌀떡) </span>
              </a>
              <span class="price"> 13,900원 </span>
            </div>
          </li>

          <li>
            <a href="#">
              <img src="img/index/product_sample/티라미슈크림떡.webp" />
            </a>
            <div class="goods_info">
              <a href="#">
                <span class="name"> 티라미슈 크림떡(티라미수 찹쌀떡) </span>
              </a>
              <span class="price"> 15,900원 </span>
            </div>
          </li>

          <li>
            <a href="#">
              <img src="img/index/product_sample/흑심떡.webp" />
            </a>
            <div class="goods_info">
              <a href="#">
                <span class="name"> 흑심떡(맛있는 찹쌀떡) </span>
              </a>
              <span class="price"> 15,900원 </span>
            </div>
          </li>

          <li>
            <a href="#">
              <img src="img/index/product_sample/녹차크림떡.webp" />
            </a>
            <div class="goods_info">
              <a href="#">
                <span class="name"> 녹차 크림떡(맛있는 찹쌀떡) </span>
              </a>
              <span class="price"> 15,900원 </span>
            </div>
          </li>
        </ul>
    </div>
  </main>
  <!--******************-->
  <!--작업 및 복붙 구역-->
  <!--******************-->
  <footer id="bottom"></footer>