<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="kr.or.ddit.message.controller.MessageController" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<security:authentication property="principal" var="principal"/>

<script>
	const userId = "${principal.realUser.userId }";
	const cPath = document.body.dataset.contextPath;
</script>

<div class="card mb-3">
	<div class="card-body d-flex justify-content-between">
		<div>
			<a class="btn btn-falcon-default btn-sm" href="${cPath }/message/list.do" data-bs-toggle="tooltip"
				data-bs-placement="top" aria-label="Back to inbox"
				data-bs-original-title="뒤로가기"><svg
					class="svg-inline--fa fa-arrow-left fa-w-14" aria-hidden="true"
					focusable="false" data-prefix="fas" data-icon="arrow-left"
					role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"
					data-fa-i2svg="">
					<path fill="currentColor"
						d="M257.5 445.1l-22.2 22.2c-9.4 9.4-24.6 9.4-33.9 0L7 273c-9.4-9.4-9.4-24.6 0-33.9L201.4 44.7c9.4-9.4 24.6-9.4 33.9 0l22.2 22.2c9.5 9.5 9.3 25-.4 34.3L136.6 216H424c13.3 0 24 10.7 24 24v32c0 13.3-10.7 24-24 24H136.6l120.5 114.8c9.8 9.3 10 24.8.4 34.3z"></path></svg>
				<!-- <span class="fas fa-arrow-left"></span> Font Awesome fontawesome.com --></a><span
				class="mx-1 mx-sm-2 text-300">|</span>

			<!-- 보관버튼 -->
			<button class="btn btn-falcon-default btn-sm" type="button"
				onclick="messageImportant(this)"
				data-bs-toggle="tooltip" data-bs-placement="top"
				data-num="${message.messageNo}"
				aria-label="Archive" data-bs-original-title="보관">
				
				<svg class="svg-inline--fa fa-archive fa-w-16" aria-hidden="true"
					focusable="false" data-prefix="fas" data-icon="archive" role="img"
					xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"
					data-fa-i2svg="">
					<path fill="currentColor"
						d="M32 448c0 17.7 14.3 32 32 32h384c17.7 0 32-14.3 32-32V160H32v288zm160-212c0-6.6 5.4-12 12-12h104c6.6 0 12 5.4 12 12v8c0 6.6-5.4 12-12 12H204c-6.6 0-12-5.4-12-12v-8zM480 32H32C14.3 32 0 46.3 0 64v48c0 8.8 7.2 16 16 16h480c8.8 0 16-7.2 16-16V64c0-17.7-14.3-32-32-32z"></path></svg>
				<!-- <span class="fas fa-archive"></span> Font Awesome fontawesome.com -->
			</button>

			<!-- 삭제버튼 -->
			<button class="btn btn-falcon-default btn-sm ms-1 ms-sm-2"
				type="button" data-bs-toggle="tooltip" data-bs-placement="top"
				onclick="messageDelete(this)"
				data-num="${message.messageNo}"
				aria-label="Delete" data-bs-original-title="삭제">
				
				<svg class="svg-inline--fa fa-trash-alt fa-w-14" aria-hidden="true"
					focusable="false" data-prefix="fas" data-icon="trash-alt"
					role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"
					data-fa-i2svg="">
					<path fill="currentColor"
						d="M32 464a48 48 0 0 0 48 48h288a48 48 0 0 0 48-48V128H32zm272-256a16 16 0 0 1 32 0v224a16 16 0 0 1-32 0zm-96 0a16 16 0 0 1 32 0v224a16 16 0 0 1-32 0zm-96 0a16 16 0 0 1 32 0v224a16 16 0 0 1-32 0zM432 32H312l-9.4-18.7A24 24 0 0 0 281.1 0H166.8a23.72 23.72 0 0 0-21.4 13.3L136 32H16A16 16 0 0 0 0 48v32a16 16 0 0 0 16 16h416a16 16 0 0 0 16-16V48a16 16 0 0 0-16-16z"></path></svg>
				<!-- <span class="fas fa-trash-alt"></span> Font Awesome fontawesome.com -->
			</button>
		</div>
	</div>
</div>


<div class="card">
            <div class="card-header">
              <div class="row">
                <div class="col-md d-flex">
                  <div class="flex-1 ms-2">
                    <h5 class="mb-0">${message.messageSj}</h5><a class="text-800 fs-10" href="#!"><span class="fw-semi-bold">${message.senderId}</span></a>
                  </div>
                </div>
                <div class="col-md-auto ms-auto d-flex align-items-center ps-6 ps-md-3"><small>${message.messageSendDe}</small></div>
              </div>
            </div>
            <div class="card-body bg-body-tertiary">
              <div class="row justify-content-center">
                <div class="col-lg-12 col-xxl-12">
                
                <!-- 쪽지 이미지 조회 -->
                  <div class="card shadow-none mb-3">
                    <div class="card-body">

					<!-- 쪽지 내용 위치 -->
                      <div class="messageContent">
						${message.messageCn}
					  </div>
					  
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="card-footer">
              <div class="row justify-content-between">

                <div class="col">
					<a	 class="btn btn-falcon-default btn-sm" 
						href="${cPath }/message/resendForm${message.messageNo}">
						<svg class="svg-inline--fa fa-reply fa-w-16" data-fa-transform="down-2" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="reply" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="" style="transform-origin: 0.5em 0.625em;"><g transform="translate(256 256)"><g transform="translate(0, 64)  scale(1, 1)  rotate(0 0 0)"><path fill="currentColor" d="M8.309 189.836L184.313 37.851C199.719 24.546 224 35.347 224 56.015v80.053c160.629 1.839 288 34.032 288 186.258 0 61.441-39.581 122.309-83.333 154.132-13.653 9.931-33.111-2.533-28.077-18.631 45.344-145.012-21.507-183.51-176.59-185.742V360c0 20.7-24.3 31.453-39.687 18.164l-176.004-152c-11.071-9.562-11.086-26.753 0-36.328z" transform="translate(-256 -256)"></path></g></g></svg>
						<span class="d-none d-sm-inline-block ms-1">답장</span>
					</a>
				</div>
              </div>
            </div>
          </div>
          
<!-- 메세지 보관 / 삭제 / 답장 비동기처리 -->
<script src="${pageContext.request.contextPath }/resources/js/app/message/messageDetail.js"></script>