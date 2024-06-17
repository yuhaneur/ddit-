<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ page import="kr.or.ddit.sns.controller.SnsController" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<security:authentication property="principal" var="principal"/>

<script>
	/* 바디 데이터 cPath 선언 ( 아래 선언한 js들 에서 공통으로 사용 하기위해 초기화 ) */
  	const userId = "${principal.realUser.userId }";
  	const cPath = document.body.dataset.contextPath
    const feedList = "${feedList}";
    $(document).ready(function(){
	      document.querySelector("#feed1").style.display="block";
	      document.querySelector("#feed2").style.display="block";
	      document.querySelector("#feed3").style.display="block";
	      document.querySelector("#feed4").style.display="block";
	      document.querySelector("#feed5").style.display="block";
    })
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
    
<link href="${pageContext.request.contextPath }/resources/public/vendors/glightbox/glightbox.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/public/vendors/plyr/plyr.css" rel="stylesheet">

    <div class="row g-3">
    	<h2>${userId }</h2>
            <div class="col-lg-9">
              <button data-bs-toggle="modal" data-bs-target="#staticBackdrop" data-num="${feed.snsFeedNo }" class="btn btn-primary btn-sm px-4 px-sm-5" style="margin-bottom: 20px;">피드 작성</button>
              <!--
              		========================== 피드 리스트 ========================== 
               -->
               
                <c:choose>
                  <c:when test="${not empty feedList}">
                    <c:forEach items="${feedList }" var="feed" varStatus="status">
                        <div id="feed${status.count}" class="card mb-3 feedForm" style="display: none;">
                          <div class="card-header bg-body-tertiary">
                            <div class="row justify-content-between">
                              <div class="col">
                                <div class="d-flex">
                                  <div class="avatar avatar-2xl status-online">
                                    <img class="rounded-circle" src="/atch/${feed.grAtchFileStreFileName }" alt="">
                                  </div>
                                  <div class="flex-1 align-self-center ms-2">
                                    <p class="mb-1 lh-1"><a class="fw-semi-bold">${feed.studentName }</a></p>
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
                                    <div class="dropdown-divider"></div>
                                    <a data-bs-toggle="modal" data-bs-target="#error-modal" class="dropdown-item text-danger" href="#!">신고</a>
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
                        <div class="border-bottom border-200 fs-10 py-3">
                        	<a class="text-700" href="#!">${feed.snsLikeCount }</a> • 좋아요
                        </div>
                        <span class="fw-medium fs-10">#${feed.snsHash.snsTagCn }</span>
                        <div class="row g-0 fw-semi-bold text-center py-2 fs-10">
                          <div class="col-auto">
                            <a onclick="feedLike(this, this.querySelector('.likeIcon'))" data-num="${feed.snsFeedNo}" class="rounded-2 d-flex align-items-center me-3" href="#!">
                              <img class="likeIcon" src="${pageContext.request.contextPath }/resources/public/assets/img/icons/spot-illustrations/like-inactive.png" width="20" alt="">
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

                          <!-- 피드 신고 모달 -->
                          <div class="modal fade" id="error-modal" tabindex="-1" role="dialog" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered" role="document" style="max-width: 500px">
                              <div class="modal-content position-relative">
                                <div class="position-absolute top-0 end-0 mt-2 me-2 z-1">
                                  <button class="btn-close btn btn-sm btn-circle d-flex flex-center transition-base" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body p-0">
                                  <div class="rounded-top-3 py-3 ps-4 pe-6 bg-body-tertiary">
                                    <h4 class="mb-1" id="modalExampleDemoLabel">피드 신고 </h4>
                                  </div>
                                  <div class="p-4 pb-0">
                                    <form>
                                      <div class="mb-3">
                                        <label class="col-form-label" for="recipient-name">신고 사유</label>
                                        <br>
                                        <div class="form-check form-check-inline">
                                    <input class="form-check-input" id="inlineCheckbox1" type="checkbox" value="option1" />
                                    <label class="form-check-label" for="inlineCheckbox1">유해하거나 위험한 콘텐츠</label>
                                  </div>
                                  <br>
                                  <div class="form-check form-check-inline">
                                    <input class="form-check-input" id="inlineCheckbox2" type="checkbox" value="option2" />
                                    <label class="form-check-label" for="inlineCheckbox2">증오 또는 악의적인 콘텐츠</label>
                                  </div>
                                  <br>
                                  <div class="form-check form-check-inline">
                                    <input class="form-check-input" id="inlineCheckbox2" type="checkbox" value="option2" />
                                    <label class="form-check-label" for="inlineCheckbox2">스팸 광고</label>
                                  </div>
                                  <br>
                                  <div class="form-check form-check-inline">
                                    <input class="form-check-input" id="inlineCheckbox2" type="checkbox" value="option2" />
                                    <label class="form-check-label" for="inlineCheckbox2">잘못된 정보</label>
                                  </div>
                                  <br>
                                  <div class="form-check form-check-inline">
                                    <input class="form-check-input" id="inlineCheckbox2" type="checkbox" value="option2" />
                                    <label class="form-check-label" for="inlineCheckbox2">폭력적 또는 혐오스러운 콘텐츠</label>
                                  </div>
                                  <br>
                                      </div>
                                      <div class="mb-3">
                                        <label class="col-form-label" for="message-text">신고 사유 상세</label>
                                        <textarea class="form-control" id="message-text"></textarea>
                                      </div>
                                    </form>
                                  </div>
                                </div>
                                <div class="modal-footer">
                                  <button onclick="feedReport(this)" data-num="${feed.snsFeedNo }" class="btn btn-danger" type="button">신 고</button>
                                  <button class="btn btn-secondary" type="button" data-bs-dismiss="modal">취 소</button>
                                </div>
                              </div>
                            </div>
                          </div>
                          <!-- 피드 신고 모달 끝 -->

                        <!-- 피드 리스트의 마지막 번호 가져오기 -->
                        <c:if test="${status.last }"><div id="last" value="${status.count}"></div></c:if>
                      </c:forEach>
                    </c:when>
                  </c:choose>
                  <button onclick="fshowAdd(this)" class="btn btn-primary btn-sm px-4 px-sm-5">더 보기</button>
                  <script>
                    let pid=5;  //
                    let last = $("#last").attr("value");// 피드의 갯수만큼 가져오는 변수
                    function fshowAdd(pBtn){
                    	for(let i = pid; i<last; i+5) {
	                        i++;
	                        document.querySelector("#feed"+i).style.display="block";
	                        if(i == last){
	                            pBtn.disabled = true;
	                        }
                    	}
                    }
		        </script>
        <!--
            ========================== 피드 리스트 끝 ========================== 
        -->
            </div>

            <div class="col-lg-3 profileBox">
              <!-- 로그인한 사용자 프로필정보 -->
              <div class="course-details-sticky-sidebar" style="margin-top: 50px;">
            	<div class="card">
                  <div class="card-body">
                    <div class="row g-3 align-items-center profile-size">

                      <!-- 프로필사진 -->
                      <div class="profileimg col-md-6 col-lg-12 text-center">
                        
                      </div>
                      
                      <div class="col-md-6 col-lg-12">
                        <div class="row row-cols-1 g-0">
                          <div class="profileForm col text-center">
                            <!-- 요악 프로필 내용 -->
                          </div>
                          
                          <!-- 프로필 버튼 -->
                          <form action="${cPath}/snsProfile/myProfile.do" method="get" class="profileBtn">
                            <div class="col-lg-5" style="margin: auto; padding: 25px;" >
                              <button type="submit" class="btn btn-primary btn-md w-100">
                                프로필
                              </button>
                            </div>
                          </form>

                          <div class="col mt-4 mt-md-5 mt-lg-4">
                            <div class="row text-center">
                              <div class="col-6 border-end-sm border-300"><img class="mb-2" src="${pageContext.request.contextPath }/resources/public/assets/img/icons/user-plus.svg" width="30" alt="">
                              	<div class="followingCount">
                                	<!-- 팔로잉 카운트 들어가는 자리 -->
                                </div>
                                <h6 class="fw-normal mb-0">Following</h6>
                              </div>
                              <div class="col-6"><img class="mb-2" src="${pageContext.request.contextPath }/resources/public/assets/img/icons/users.svg" width="30" alt="">
                              	<div class="followerCount">
                                	<!-- 팔로워 카운트 들어가는 자리 -->
                                </div>
                                <h6 class="fw-normal mb-0">Followers</h6>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              
                
                <!-- 추천 팔로우 리스트 (사용자에게 등록되지 않은 리스트 출력) -->
                <div class="card">
                  <div class="card-header bg-body-tertiary overflow-hidden" >
                    <h5 class="mb-0">추천 팔로우</h5>
                  </div>
                  <div class="unFollowList card-body" style="overflow:scroll; height: 330px;">
                  	<!-- 추천 팔로우 리스트 들어가는 자리. -->
                  </div>
              </div>
              </div>
            </div>
          </div>
            <!-- 피드 작성 모달 -->
              <div class="modal fade" id="staticBackdrop" data-bs-keyboard="false" data-bs-backdrop="static" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg mt-6" role="document">
                  <div class="modal-content border-0">
                    <div class="position-absolute top-0 end-0 mt-3 me-3 z-1">
                      <button class="btn-close btn btn-sm btn-circle d-flex flex-center transition-base" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body p-0">
                      <div class="rounded-top-3 bg-body-tertiary py-3 ps-4 pe-6">
                        <h4 class="mb-1" id="staticBackdropLabel">피드 작성</h4>
                      </div>
                      <div class="p-4">
                        <div class="row">

                          <div class="card mb-3">
                            <div class="card-body p-0">

                            <!-- ============== 피드 작성 ==============-->
                              <form class="feedInsertForm" name="feedForm" method="post" enctype="multipart/form-data">
                                <!-- 이미지 미리보기 -->
                                <div id="previews">
                                </div>
                                <textarea name="snsFeedCn" class="snsFeedCn shadow-none form-control rounded-0 resize-none px-x1 border-y-0 border-200" placeholder="내용을 입력해주세요." rows="4"></textarea>
                                <input class="imgUp" type="file" name="images" multiple >
                                <!-- 해시태그 -->
                                <div class="d-flex align-items-center ps-x1 border border-200">
                                  <label class="text-nowrap mb-0 me-2" for="hash-tags">
                                    <svg class="svg-size" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="plus" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg=""><path fill="currentColor" d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg><!-- <span class="fas fa-plus me-1 fs-11"></span> Font Awesome fontawesome.com --><span class="fw-medium fs-10">해시태그</span>
                                  </label>
                                  <input name="snsTagCn" class="snsTagCn form-control border-0 fs-10 shadow-none" id="hash-tags" type="text" placeholder="#해시태그" />
                                </div>
                                <!-- 해시태그 끝 -->
                                <div class="row g-0 justify-content-between mt-3 px-x1 pb-3">
                                  <div class="col" >
                                    <!-- 
                                    <button class="imageBtn btn btn-tertiary btn-sm rounded-pill shadow-none d-inline-flex align-items-center fs-10 mb-0 me-1" type="button">
                                      <img class="cursor-pointer" src="${pageContext.request.contextPath }/resources/public/assets/img/icons/spot-illustrations/image.svg" width="17" alt="">
                                      <span class="ms-2 d-none d-md-inline-block">Image</span>
                                    </button>
                                     -->
                                  </div>
                                  <!-- 공개여부 -->
                                  <div class="col-auto">
                                    <div class="dropdown d-inline-block me-1">
                                     <select name="snsFeedAt" class="snsFeedAt btn btn-sm dropdown-toggle px-1" id="dropdownMenuButton" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <option value="A">전체 공개</option>
                                        <!-- <option value="fOpen">팔로워 공개</option> -->
                                        <option value="B">비공개</option>
                                    </select>
                                    <button data-bs-toggle="modal" data-bs-target="#staticBackdrop" data-num="${feed.snsFeedNo }" class="feedInsertBtn btn btn-primary btn-sm px-4 px-sm-5">작 성</button>
                                  </div>
                                </div>
                                </div>
                              </form>
                              <!-- ============== 피드 작성 끝 ============== -->
                              
                            </div>
                          </div>

                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              
<form action="<c:url value='/sns/feedList.do' />" id="searchForm">
	<input type="hidden" name="currentPage" />
</form>

<script>
	function paging(page) {
		//	location.href = "?currentPage=" + page;
		searchForm.currentPage.value = page;
		$searchForm.submit();
	}
	
	const $searchForm = $("#searchForm");
	$("#searchBtn").on("click", function(event) {
		let $searchUI = $(this).parents("#searchUI");
		$searchUI.find(":input[name]").each(function(idx, ipt) {
			let name = this.name;
			let value = $(this).val();
			searchForm[name].value = value;
		});
		$searchForm.submit();
	});
</script>


<!-- 필수 스크립트 -->
<script src="${pageContext.request.contextPath }/resources/public/vendors/glightbox/glightbox.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/public/vendors/plyr/plyr.polyfilled.min.js"></script>

<!-- 댓글 비동기처리 -->
<script src="${pageContext.request.contextPath }/resources/js/app/sns/snsAnswer.js"></script>

<!-- 피드 등록할 때 이미지 처리 스크립트 -->
<script src="${pageContext.request.contextPath }/resources/js/app/sns/snsFeedImage.js"></script>

<!-- 피드 등록 비동기처리 -->
<script src="${pageContext.request.contextPath }/resources/js/app/sns/snsFeed.js"></script>

<!-- 팔로워 비동기처리 -->
<script src="${pageContext.request.contextPath }/resources/js/app/sns/snsFollow.js"></script>
