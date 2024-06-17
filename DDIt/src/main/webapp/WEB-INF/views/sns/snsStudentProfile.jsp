<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="kr.or.ddit.snsProfile.controller.SnsProfileController" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<script>
	/* 바디 데이터 cPath 선언 ( 아래 선언한 js들 에서 공통으로 사용 하기위해 초기화 ) */
  	var userId = "${student.userId}";
	const cPath = document.body.dataset.contextPath;
</script>

<style>
	#previews img {
	    width: auto; height: auto;
	    max-width: 400px;
	    max-height: 400px;
	    padding: 10px;
	}
	.feed_img {
    width: auto; height: auto;
    max-width: 400px;
    max-height: 400px;
    padding: 10px;
	}
</style>

<div class="row">
	<div class="col-8">
          <div class="card mb-3 btn-reveal-trigger">
            <div class="card-body">
              <div class="row">
                <div class="col-lg-3" style="margin-left: 50px; margin-top: 50px;">
                  <div class="avatar avatar-5xl shadow-sm img-thumbnail rounded-circle">
                    <div class="h-100 w-100 rounded-circle overflow-hidden position-relative">
                    	<img class="rounded-circle img-thumbnail shadow-sm" id="preview" src="/atch/${student.atchList[0].streFileName}" width="200" alt="" data-dz-thumbnail="data-dz-thumbnail">

                      <!-- <input class="d-none" id="profile-image" type="file">  -->
                      
                      <!-- 이미지 프로필 출력 / 수정 -->
                      <label class="mb-0 overlay-icon d-flex flex-center profileimg" data-user="${student.userId }">
                      	<input class="imgUp" type="file" name="profileImg" style="display: none;">
                      	<span class="bg-holder overlay overlay-0"></span>
                      	<span class="z-1 text-white dark__text-white text-center fs-10">
                      		<svg class="svg-inline--fa fa-camera fa-w-16" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="camera" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M512 144v288c0 26.5-21.5 48-48 48H48c-26.5 0-48-21.5-48-48V144c0-26.5 21.5-48 48-48h88l12.3-32.9c7-18.7 24.9-31.1 44.9-31.1h125.5c20 0 37.9 12.4 44.9 31.1L376 96h88c26.5 0 48 21.5 48 48zM376 288c0-66.2-53.8-120-120-120s-120 53.8-120 120 53.8 120 120 120 120-53.8 120-120zm-32 0c0 48.5-39.5 88-88 88s-88-39.5-88-88 39.5-88 88-88 88 39.5 88 88z"></path></svg><!-- <span class="fas fa-camera"></span> Font Awesome fontawesome.com -->
                      		<span class="d-block">이미지 수정</span>
                      	</span>
                      </label>
                    </div>
                  
                  </div>
                <h4 class="mb-1">${student.studentName }<span data-bs-toggle="tooltip" data-bs-placement="right" aria-label="Verified" data-bs-original-title="Verified"><svg class="svg-inline--fa fa-check-circle fa-w-16 text-primary" data-fa-transform="shrink-4 down-2" aria-hidden="true" focusable="false" data-prefix="fa" data-icon="check-circle" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="" style="transform-origin: 0.5em 0.625em;"><g transform="translate(256 256)"><g transform="translate(0, 64)  scale(0.75, 0.75)  rotate(0 0 0)"><path fill="currentColor" d="M504 256c0 136.967-111.033 248-248 248S8 392.967 8 256 119.033 8 256 8s248 111.033 248 248zM227.314 387.314l184-184c6.248-6.248 6.248-16.379 0-22.627l-22.627-22.627c-6.248-6.249-16.379-6.249-22.628 0L216 308.118l-70.059-70.059c-6.248-6.248-16.379-6.248-22.628 0l-22.627 22.627c-6.248 6.248-6.248 16.379 0 22.627l104 104c6.249 6.249 16.379 6.249 22.628.001z" transform="translate(-256 -256)"></path></g></g></svg><!-- <small class="fa fa-check-circle text-primary" data-fa-transform="shrink-4 down-2"></small> Font Awesome fontawesome.com --></span>
                </h4>
                <h5 class="fs-9 fw-normal">Senior Software Engineer at Technext Limited</h5>
                <p class="text-500">New York, USA</p>
                <div class="border-bottom border-dashed my-4 d-lg-none"></div>
            </div>
              
              
              <!-- 프로필 수정? -->
              <div class="col ps-2 ps-lg-2">
                <div class="card mb-2">
                  <div class="card-header">
                    <h5 class="mb-0">프로필 수정 : ${student.userId }</h5>
                    
                    <!-- 테스트 -->
                    <h1 class="mb-0"></h1>
                    
                  </div>
                  <div class="card-body bg-body-tertiary">
                  
                  <!-- 자기소개 수정 -->
                    <div class="profileForm">
                      <div class="col-lg-12" style="overflow:scroll; height:200px;">
                        <label class="form-label" for="intro">자기소개</label>
                        <pre>${student.studentIntro }</pre>
                      </div>
                      <div class="profileFormBtn col-12 d-flex justify-content-end">
                        <button class="btn btn-primary"  onclick="profileUpdateForm(this)" data-intro="${student.studentIntro }" data-id="${student.userId}" style="margin-top: 20px;">수 정</button>
                      </div>
                    
                    </div>
                  </div>
                </div>
              </div>
          </div>
         </div>
       </div>
     </div>
     <div class="col-4">
      <div class="col-lg-12 pe-lg-12">
        <div class="card mb-3" style="height:400px;">
          <div class="card-header">
            <h5 class="mb-0">팔로워</h5>
          </div>

          <!-- 프로필 팔로워 리스트 출력 -->
          <div class="followerList card-body bg-body-tertiary" style="overflow:scroll;">
				      <!-- 프로필 팔로워 리스트 들어가는 자리 -->
          </div>
          <!-- 팔로워 리스트 끝 -->
        </div>
        </div>
        </div>
        
        <!-- 활동 피드 리스트 -->
	           <div class="col-12">
	           		<div class="col-lg-12 pe-lg-12">
                		<div class="card-body bg-body-tertiary" style="overflow:scroll; height: 480px;">
			                <div class="card-header">
			                  <h5 class="mb-0" style="margin:20px;">작성한 피드</h5>
			                </div>
			        <c:choose>
			          <c:when test="${not empty feedList}">
			            <c:forEach items="${feedList }" var="feed" varStatus="status">
			            <a data-bs-toggle="modal" data-bs-target="#staticBackdrop" data-num="${feed.snsFeedNo }" href="#!">
               					<div id="feed${status.count}" class="card mb-3 feedForm" style="margin:20px;">
				                  <div class="d-flex">
				                    <div class="flex-1 position-relative ps-3">
					                      <p class="fs-6 mb-0">
					                      	${feed.snsFeedCn }
					                      </p>
				                      <p class="text-1000 mb-0">${feed.snsFeedCreatDe }</p>
					                    </div>
				                  </div>
			                  	</div>
			           </a>

            <div class="modal fade" id="staticBackdrop" data-bs-keyboard="false" data-bs-backdrop="static" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg mt-6" role="document">
                  <div class="modal-content border-0">
                    <div class="position-absolute top-0 end-0 mt-3 me-3 z-1">
                      <button class="btn-close btn btn-sm btn-circle d-flex flex-center transition-base" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body p-0">
                      <div class="rounded-top-3 bg-body-tertiary py-3 ps-4 pe-6">
                        <h4 class="mb-1" id="staticBackdropLabel">나의 피드</h4>
                      </div>
                      <div class="p-4">
                        <div class="row">
                        <div id="feed${status.count}" class="card mb-3 feedForm">
                          <div class="card-header bg-body-tertiary">
                            <div class="row justify-content-between">
                              <div class="col">
                                <div class="d-flex">
                                  <div class="avatar avatar-2xl status-online">
                                    <img class="rounded-circle" src="/atch/${feed.grAtchFileStreFileName }" alt="">
                                  </div>
                                  <div class="flex-1 align-self-center ms-2">
                                    <p class="mb-1 lh-1"><a class="fw-semi-bold" href="${pageContext.request.contextPath }/resources/public/pages/user/profile.html">${feed.userId }</a></p>
                                    <p class="mb-0 fs-10">${feed.snsFeedCreatDe } • <svg class="svg-size" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="globe-americas" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 496 512" data-fa-i2svg=""><path fill="currentColor" d="M248 8C111.03 8 0 119.03 0 256s111.03 248 248 248 248-111.03 248-248S384.97 8 248 8zm82.29 357.6c-3.9 3.88-7.99 7.95-11.31 11.28-2.99 3-5.1 6.7-6.17 10.71-1.51 5.66-2.73 11.38-4.77 16.87l-17.39 46.85c-13.76 3-28 4.69-42.65 4.69v-27.38c1.69-12.62-7.64-36.26-22.63-51.25-6-6-9.37-14.14-9.37-22.63v-32.01c0-11.64-6.27-22.34-16.46-27.97-14.37-7.95-34.81-19.06-48.81-26.11-11.48-5.78-22.1-13.14-31.65-21.75l-.8-.72a114.792 114.792 0 0 1-18.06-20.74c-9.38-13.77-24.66-36.42-34.59-51.14 20.47-45.5 57.36-82.04 103.2-101.89l24.01 12.01C203.48 89.74 216 82.01 216 70.11v-11.3c7.99-1.29 16.12-2.11 24.39-2.42l28.3 28.3c6.25 6.25 6.25 16.38 0 22.63L264 112l-10.34 10.34c-3.12 3.12-3.12 8.19 0 11.31l4.69 4.69c3.12 3.12 3.12 8.19 0 11.31l-8 8a8.008 8.008 0 0 1-5.66 2.34h-8.99c-2.08 0-4.08.81-5.58 2.27l-9.92 9.65a8.008 8.008 0 0 0-1.58 9.31l15.59 31.19c2.66 5.32-1.21 11.58-7.15 11.58h-5.64c-1.93 0-3.79-.7-5.24-1.96l-9.28-8.06a16.017 16.017 0 0 0-15.55-3.1l-31.17 10.39a11.95 11.95 0 0 0-8.17 11.34c0 4.53 2.56 8.66 6.61 10.69l11.08 5.54c9.41 4.71 19.79 7.16 30.31 7.16s22.59 27.29 32 32h66.75c8.49 0 16.62 3.37 22.63 9.37l13.69 13.69a30.503 30.503 0 0 1 8.93 21.57 46.536 46.536 0 0 1-13.72 32.98zM417 274.25c-5.79-1.45-10.84-5-14.15-9.97l-17.98-26.97a23.97 23.97 0 0 1 0-26.62l19.59-29.38c2.32-3.47 5.5-6.29 9.24-8.15l12.98-6.49C440.2 193.59 448 223.87 448 256c0 8.67-.74 17.16-1.82 25.54L417 274.25z"></path></svg><!-- <span class="fas fa-globe-americas"></span> Font Awesome fontawesome.com --></p>
                                  </div>
                                </div>
                              </div>
                              <div class="col-auto">
                                <div class="dropdown font-sans-serif btn-reveal-trigger">
                                  <button class="btn btn-link text-600 btn-sm dropdown-toggle dropdown-caret-none btn-reveal" type="button" id="post-album-action" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><svg class="svg-inline--fa fa-ellipsis-h fa-w-16 fs-10" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="ellipsis-h" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M328 256c0 39.8-32.2 72-72 72s-72-32.2-72-72 32.2-72 72-72 72 32.2 72 72zm104-72c-39.8 0-72 32.2-72 72s32.2 72 72 72 72-32.2 72-72-32.2-72-72-72zm-352 0c-39.8 0-72 32.2-72 72s32.2 72 72 72 72-32.2 72-72-32.2-72-72-72z"></path></svg><!-- <span class="fas fa-ellipsis-h fs-10"></span> Font Awesome fontawesome.com --></button>
                                  <div class="dropdown-menu dropdown-menu-end py-3" aria-labelledby="post-album-action">
                                  
                                  <script>
                                    var feedImgList = []; // JavaScript 변수 선언
                                    
                                    // 각 이미지 요소를 루프하여 정보 추출
                                    var test = document.querySelector("feed${status.count}");
                                    var imgElements = document.querySelectorAll('.feed_img');
                                    for (var i = 0; i < imgElements.length; i++) {
                                      var imgElement = imgElements[i];
                                      var imgUrl = imgElement.src; // 이미지 URL 추출
                                    
                                      // 이미지 URL을 배열에 추가
                                      feedImgList.push(imgUrl);
                                    }
                                  </script>
                                  
                                    <a id="feedUpdateBtn" class="dropdown-item" onclick="feedUpdate(this, feedImgList)"
                                      data-userid="${feed.userId}" data-snsde="${feed.snsFeedCreatDe}" data-tag="${feed.snsHash.snsTagCn}"
                                      data-cn="${feed.snsFeedCn}" data-num="${feed.snsFeedNo}" data-pro="${feed.grAtchFileStreFileName }" href="#!">수정</a>
                                    <a id="feedDeleteBtn" class="dropdown-item" onclick="feedDelete(this)" data-num="${feed.snsFeedNo }" data-user="${feed.userId }" href="#!">삭제</a>
                                    <div class="dropdown-divider"></div><a class="dropdown-item text-danger" href="#!">신고</a>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="card-body overflow-hidden">
                            
                        <!-- 피드 이미지들 -->
                        <div class="imgs">
                          <c:forEach items="${feed.atchList }" var="atch">
                            <img class="feed_img" src="/atch/${atch.streFileName }">
                          </c:forEach>
                    	 </div>
                    	 
                        <!-- 피드의 내용 들어가는 위치 -->
                        <pre>${feed.snsFeedCn }</pre>
                        <div class="row mx-n1">
                        </div>
                      </div>
                      <div class="card-footer bg-body-tertiary pt-0">
                        <div class="border-bottom border-200 fs-10 py-3"><a class="text-700" href="#!">${feed.snsLikeCount }</a> • 좋아요
                        </div>
                        <span class="fw-medium fs-10">#${feed.snsHash.snsTagCn }</span>
                        <div class="row g-0 fw-semi-bold text-center py-2 fs-10">
                          <div class="col-auto">
                            <a class="rounded-2 d-flex align-items-center me-3" href="#!">
                              <img src="${pageContext.request.contextPath }/resources/public/assets/img/icons/spot-illustrations/like-inactive.png" width="20" alt="">
                              <span class="ms-1">좋아요</span>
                            </a>
                          </div>
                        </div>

                    <div id="Accordion_wrap">
                          <div class="que" value="${feed.snsFeedNo }">
                            <img src="${pageContext.request.contextPath }/resources/public/assets/img/icons/spot-illustrations/comment-active.png" width="20" alt="">
                            <span class="ms-1">댓글</span>
                            <div class="arrow-wrap">
                              <span class="arrow-top">↑</span>
                            <span class="arrow-bottom">↓</span>
                            </div>
                          </div>
                          <div class="anw" style="padding:15px;">
                            <div class="d-flex align-items-center border-top border-200 pt-3">

                              <!-- 현재 로그인한 사용자의 아이디의 값을 가져가야함. -->
                              <input class="answerCn form-control rounded-pill ms-2 fs-10" type="text" placeholder="댓글 작성 ...">
                              <button onclick="answerInsert(this)" class="btn btn-primary btn-sm px-4 px-sm-2" style="width: 11%; margin-left: 20px;"
                                      data-num="${feed.snsFeedNo}" data-user="${userId }" >작 성</button>
                            </div>
                                <div id="answer" style="padding:15px;">
                                <!-- 댓글들 들어가는 위치 -->
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>

                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
	              </c:forEach>
	            </c:when>
	              <c:otherwise>
				          <h4 style="margin: 30px;">작성한 피드가 없습니다.</h4>
				        </c:otherwise>
	          </c:choose>
                </div>
          </div>
         </div>
<button data-bs-toggle="modal" data-bs-target="#staticBackdrop" data-num="${feed.snsFeedNo }" class="feedInsertBtn btn btn-primary btn-sm px-4 px-sm-5" style="display:none;">작 성</button>
</div>



<!-- 마이 학생 프로필 비동기 처리 -->
<script src="${pageContext.request.contextPath }/resources/js/app/sns/snsStudentMyProfile.js"></script>


<!-- 필수 스크립트 -->
<script src="${pageContext.request.contextPath }/resources/public/vendors/glightbox/glightbox.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/public/vendors/plyr/plyr.polyfilled.min.js"></script>

<!-- 댓글 비동기처리 -->
<script src="${pageContext.request.contextPath }/resources/js/app/sns/snsAnswer.js"></script>

<!-- 피드 등록할 때 이미지 처리 스크립트 -->
<script src="${pageContext.request.contextPath }/resources/js/app/sns/snsFeedImage.js"></script>

<!-- 피드 등록 비동기처리 -->
<script src="${pageContext.request.contextPath }/resources/js/app/sns/snsMyFeed.js"></script>

<!-- 팔로워 비동기처리 -->
<script src="${pageContext.request.contextPath }/resources/js/app/sns/snsFollow.js"></script>