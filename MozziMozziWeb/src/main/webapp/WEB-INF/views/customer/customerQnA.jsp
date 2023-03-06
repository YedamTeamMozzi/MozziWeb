<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


    <link rel="stylesheet" href="bootstrap/css/qna.css">

    <style>
      .navBox {
        text-align: center;
      }

      .big {
        font-size: 30px;
      }

      .qnaTop {
        text-align: center;
        padding: 30px;
      }

      .customerNav {
        padding-top: 30px;
      }

      a {
        text-decoration: none;
        color: black;
      }
    </style>

    <body>
      <div class="navBox">
        <div class="customerNav">
          <div class="navTop">
            <div><span class="txt_top">고객센터</span></div>
            <div><span class="txt">이용시간 : 08:00 ~ 18:00</span></div>
          </div>
        </div>
        <div class="qnaTop">
          <div id="nav_Div">
            <ul class="nav_main">
              <li><a class="nav_a" href="customerNotice.do"> <span class="txt">공지사항</span>
                </a></li>
              <li><a class="nav_a" href="customerFna.do"> <span class="txt">자주하는 질문</span>
                </a></li>
              <li><a class="nav_a" href="customerQna.do"> <span class="txt big">상품문의</span>
                </a></li>
            </ul>
          </div>
        </div>
      </div>
      <div id="qna_table_div">
        <table id="qna_table">
          <thead>
            <th class="qna_no">번호</th>
            <th class="qna_info">제목</th>
            <th class="qna_title">내용</th>
            <th class="qna_writer">작성자</th>
            <th class="qna_date">작성일자</th>
            <th class="hit_count">조회수</th>
          </thead>
          <c:forEach var="qna" items="${qnalist}">
            <tbody>
              <td>${qna.qnaNO}</td>
              <td><a href="customerQnaIn.do?qnano=${qna.qnaNO}">${qna.qnaTitle}</a></td>
              <td>${qna.qnaContent} </td>
              <td>${qna.userId} </td>
              <td>${qna.writeDate} </td>
              <td>${qna.hitCount} </td>
            </tbody>
          </c:forEach>

        </table>
      </div>
      <div class="addbtn">
        <c:if test="${ logManager == 'user'}">
          <button type="button" onclick="location.href='customerQnaForm.do'">문의 등록</button>
        </c:if>
      </div>
      <div style="display: block; text-align: center;">
        <c:if test="${paging.startPage != 1 }">
          <a
            href="/MozziMozziWeb/customerQna.do?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
        </c:if>
        <c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
          <c:choose>
            <c:when test="${p == paging.nowPage }">
              <b>${p }</b>
            </c:when>
            <c:when test="${p != paging.nowPage }">
              <a href="/MozziMozziWeb/customerQna.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
            </c:when>
          </c:choose>
        </c:forEach>
        <c:if test="${paging.endPage != paging.lastPage}">
          <a href="/MozziMozziWeb/customerQna.do?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
        </c:if>
      </div>