<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   
<!-- FullPackage -->
<script src="//cdn.ckeditor.com/4.5.11/full/ckeditor.js"></script>

<style>
    .btn{
        background-color: orange;
        border-radius: 5px;
        border: none;
        width: 100px;
        height: 40px;
        color: aliceblue;
        margin-right: 5px;
    }
    .active{
        color: rgb(3, 2, 1);
        width: 50px;
    }
    .form-control{
        color: rgb(42, 28, 1);
        border-radius: 5px;         
      
           }
           
    .pull-right{
    	text-align : center;
    }
</style>

<body class="body">

	<!-- Page Content -->
	<div class="container">
		<!-- Page Heading/Breadcrumbs -->

		<!-- Content Row -->
		<div class="row">
			<div class="col-md-3">
				<c:choose>
					<c:when test="${param.mm eq null}">
						<c:set value="${mm}" var="mm" />
					</c:when>
					<c:otherwise>
						<c:set value="${param.mm}" var="mm" />
					</c:otherwise>
				</c:choose>
			</div>

			<div class="col-md-9">
				<!-- 소제목 -->


				<!-- Content Column -->
				<div class="col-lg-12">

					<div class="row">

						<script>
							function check(msg) {
								// msg : 공지등록 / 수정 
								
								if (confirm("정말 " + msg + " 하시겠습니까?") == true){    //확인
									
									// 제목 빈값 체크
									if (document.bpForm.bpTitle.value == "") {
										alert("제목을 입력하십시요.");
										document.bpForm.bpTitle.focus();
										return false;
									}
								
									// contents 빈값 체크기능 추가 (textarea 값의 길이 체크하자!)
									
									
									alert(msg + " 되었습니다.");
									
									location.href = "/admins/promoter/boardmgr/PmtNoticeList.mwav?pageNum=1";
									document.bpForm.submit();

									
									return true;
									
								}else{   //취소
								    return false;
								}
							
							}
						</script>
						
						<!-- Content Column -->
						<div class="table-responsive">
									<form role="form" method="post" name="bpForm"
										action="/admins/promoter/boardmgr/PmtNoticeForm.mwav"
                                        style="margin-top: 100px; margin-left: 100px;">
										
										<table class="table table-striped">

											<thead>
												<tr>

													<div class="pull-right">
														<input type="hidden" name="boardPromoter_id" /> <input
															type="hidden" name="bpHighLight" value="0" /> <input
															type="hidden" name="bpViewCount" value="0" MaxLength="10" />

													</div>
												</tr>
                                                
											</thead>
											<tbody>
												<tr>
													<td></td>

													<td></td>
													<td></td>
													<td></td>
													<td></td>
												</tr>
											</tbody>
										</table>

										<table class="table table-striped" style="margin-left:250px">

											<tr>
												<th class="active">제목</th>
												<td><input type="text" class="form-control"
													placeholder="Text input" name="bpTitle"></td>
											</tr>



											
											<tr>
												<th class="active"></th>
												<td><textarea name="bpContent"
														class="form-control input-sm ckeditor" id="message"
														placeholder="Message" style="width: 100%; height: 200px;"></textarea>
													<span class="help-block"></span></td>
											</tr>

										</table>
										<br style="clear: both">
										<p class="pull-right">
											<button type="button" class="btn btn"
												onClick="javascript:window.location.href='/admins/promoter/boardmgr/PmtNoticeList.mwav?pageNum=1'">전체목록</button>
											<!--  <button type="button" class="btn btn-warning" onClick="javascript:history.go(-1)">BACK</button> -->
											<button type="button" class="btn btn-danger" onclick="check('공지등록')">등록</button>
										</p>
									</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /.container -->
	<!-- Footer -->
		<!--/////////////////////////////////////////////////// -->
		<!--/////////////////////////////////////////////////// -->
