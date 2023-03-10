<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <style>
      body {
        width: 100%;
      }

      .titleDiv h2 {
        padding: 20px;
        border-bottom: 2px solid orange;
      }

      .qnaBox {
        margin: 0 auto;
        width: 80%;
      }

      .qnaTable {
        text-align: center;
        width: 100%;
      }

      .qnaTr1,
      .qnaTr2,
      .qnaTr3 {
        display: flex;
        padding: 10px;
      }

      .qnaTr1 th:nth-child(1) {
        flex: 1;
      }

      .qnaTr1 th:nth-child(2) {
        flex: 1;
      }

      .qnaTr1 th:nth-child(3) {
        flex: 1;
      }

      .qnaTr2 td:nth-child(1) {
        flex: 1;
      }

      .qnaTr2 td:nth-child(2) {
        flex: 1;
      }

      .qnaTr2 input[type="text"] {
        width: 95%;
        height: 25px;
        text-align: center;
        border: none;
      }

      .qnaTr2 td:nth-child(3) {
        flex: 1;
      }

      .qnaTr3 th:nth-child(1) {
        flex: 1;
        padding-left: 45px;
        padding-top: 130px;
      }

      .qnaTr3 td:nth-child(2) {
        flex: 2;
        padding-right: 50px;
      }

      .qnaTr3 textarea {
        border: 1px solid darkgray;
        width: 500px;
        height: 300px;
        resize: none;
      }

      .qnaTrBtn {
        display: flex;
        border-top: 2px solid orange;
        padding-top: 25px;
        margin-top: 20px;
      }

      .qnaTrBtn td {
        flex: 1;
      }

      .qnaTrBtn input[type="button"],
      .qnaTrBtn input[type="submit"] {
        width: 100px;
        height: 30px;
        border-radius: 5px;
      }

      .qnaTrBtn .goList {
        background-color: rgb(253, 200, 101);
        color: white;
        border: none;
        font-weight: bold;
      }

      .qnaTrBtn .update {
        background-color: rgb(253, 200, 101);
        color: white;
        border: none;
        font-weight: bold;
      }

      .qnaTrBtn .save {
        background-color: rgb(253, 200, 101);
        color: white;
        border: none;
        font-weight: bold;
      }

      .qnaTrBtn .delete {
        background-color: rgb(255, 255, 255);
        color: rgb(253, 154, 73);
        border: 2px solid rgb(253, 154, 73);
        font-weight: bold;
      }

      .qnaTrReply {
        margin-left: 50px;
        margin-top: 30px;
        display: flex;
      }


      .qnaTrReply .reply1 {
        flex: 1;
        font: 23px bold;
      }

      .qnaTrReply .reply2 {
        flex: 1;
      }

      .qnaTrReply .reply2 {
        width: 80px;
        height: 30px;
        margin-right: 25px;
        margin-top: 5px;
        border: none;
        border-radius: 5px;
        background-color: rgb(253, 154, 73);
        color: white;
        font: 16px bold;
      }

      .qnaTrReply .reply3 {
        flex: 3;
        margin-right: 80px;
      }

      .reply3 textarea {
        width: 100%;
        height: 60px;
        resize: none;
      }

      .i_up {
        color: orange;
        position: relative;
        bottom: 15px;
      }

      .qnaTrReplyTitle {
        border-top: 2px solid orange;
        margin-top: 20px;
        padding-top: 10px;
        display: flex;
      }

      .qnaTrReplyList {
        margin-top: 5px;
        display: flex;
      }

      .list1 {
        flex: 1;
      }

      .list2 {
        flex: 1;
      }

      .list3 {
        flex: 1;
      }
    </style>

    <!-- ?????????????????????
??????
?????????
????????????
??????

?????? 4???
?????? , ??????, ??????, ?????? -->


    <input type="hidden" name="qnaNO" value="${vo.qnaNO}" />
    <div class="qnaBox">
      <div class="titleDiv">
        <h2>?????? ??????</h2>
      </div>
      <form action="customerQnaUpdate.do" method="post" id="qna_form">
        <table class="qnaTable">
          <tr class="qnaTr1">
            <th>??????</th>
            <th>?????????</th>
            <th>????????????</th>
          </tr>
          <tr class="qnaTr2">
            <td><input class="readChk" type="text" id="qna_title" name="qna_title" value="${vo.qnaTitle}" readonly></td>
            <td><span id="dd" name="userId" class="txt">${vo.userId}</span></td>
            <td>
              <select class="readChk" name="muni" id="muni" class="pl ri2" disabled>

                <option value="payment" class="txt" <c:if test="${vo.category == 'payment' }">selected</c:if> >??????
                </option>
                <option value="delivery" class="txt" <c:if test="${vo.category == 'delivery' }">selected</c:if>>??????
                </option>
                <option value="order" class="txt" <c:if test="${vo.category == 'order' }">selected</c:if>>??????</option>

              </select>
            </td>
          </tr>
          <tr class="qnaTr3">
            <th>??????</th>
            <td colspan="2"><textarea class="readChk" name="qna_content" id="qna_content">${vo.qnaContent}</textarea>
            </td>
          </tr>
          <tr class="qnaTrBtn">
            <td></td>
            <td><a href="customerQna.do"><input class="goList" type="button" value="????????????"></a></td>
            <c:if test="${vo.userId eq logId }">
              <td><input class="update" id="upBtn" type="button" value="????????????"></td>
              <td><input class="save" type="submit" value="????????????"></td>
              <td><input class="delete" id="del_btn" type="button" value="????????????"></td>
            </c:if>
            <td></td>
          </tr>
          
        </table>
      </form>
    </div>


    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script>
      $('#upBtn').click(() => {
        console.log("${ logId }")
        console.log("${vo.userId}")
        console.log("${ logId}" == "${vo.userId}")
        if ("${ logId}" == "${vo.userId}") {

          $('.readChk').attr('readonly', false);
          $('.readChk').attr('disabled', false);
        }
      });

      $("#del_btn").click(function () {
        var result = confirm("???????????? ?????????????????????????");
        if (result) {
          location.href = "customerQnaDelete.do?qnaNO=${vo.qnaNO}";
        }
      });

// <tr class="qnaTrReply">
//             <td class="reply1">????????????
//               <input class="reply2" type="button" value="??????">
//             </td>
//             <td class="reply3"><textarea name="" id=""></textarea></td>
//           </tr>
//           <tr class="qnaTrReplyTitle">
//             <td class="list1">?????????</td>
//             <td class="list2">????????????</td>
//             <td class="list3">????????????</td>
//           </tr>
//           <tr class="qnaTrReplyList">
//             <td class="list1">??????</td>
//             <td class="list2">??????</td>
//             <td class="list3">??????</td>
//           </tr>
    </script>