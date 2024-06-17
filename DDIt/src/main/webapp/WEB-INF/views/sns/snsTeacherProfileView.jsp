<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="kr.or.ddit.snsProfile.controller.SnsProfileController" %>
<script>
	/* 바디 데이터 cPath 선언 ( 아래 선언한 js들 에서 공통으로 사용 하기위해 초기화 ) */
  	var userId = "${userId}";
  	var test = "${teacher}"
	const cPath = document.body.dataset.contextPath;
</script>

<div class="row">
	<div class="col-8">
          <div class="card mb-3 btn-reveal-trigger">
            <div class="card-body">
              <div class="row">
                <div class="col-lg-3" style="margin-left: 50px; margin-top: 50px;">
                  <div class="avatar avatar-5xl shadow-sm img-thumbnail rounded-circle">
                    <div class="h-100 w-100 rounded-circle overflow-hidden position-relative">
                    <img src="/atch/${teacher.atchList[0].streFileName }" width="200" alt="" data-dz-thumbnail="data-dz-thumbnail">
                    </div>
                  </div>
                <h4 class="mb-1">${teacher.teacherName }<span data-bs-toggle="tooltip" data-bs-placement="right" aria-label="Verified" data-bs-original-title="Verified"><svg class="svg-inline--fa fa-check-circle fa-w-16 text-primary" data-fa-transform="shrink-4 down-2" aria-hidden="true" focusable="false" data-prefix="fa" data-icon="check-circle" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="" style="transform-origin: 0.5em 0.625em;"><g transform="translate(256 256)"><g transform="translate(0, 64)  scale(0.75, 0.75)  rotate(0 0 0)"><path fill="currentColor" d="M504 256c0 136.967-111.033 248-248 248S8 392.967 8 256 119.033 8 256 8s248 111.033 248 248zM227.314 387.314l184-184c6.248-6.248 6.248-16.379 0-22.627l-22.627-22.627c-6.248-6.249-16.379-6.249-22.628 0L216 308.118l-70.059-70.059c-6.248-6.248-16.379-6.248-22.628 0l-22.627 22.627c-6.248 6.248-6.248 16.379 0 22.627l104 104c6.249 6.249 16.379 6.249 22.628.001z" transform="translate(-256 -256)"></path></g></g></svg><!-- <small class="fa fa-check-circle text-primary" data-fa-transform="shrink-4 down-2"></small> Font Awesome fontawesome.com --></span>
                </h4>
                <div class="border-bottom border-dashed my-4 d-lg-none"></div>
                
                <!-- 팔로우 하기 -->
                <button class="btn btn-falcon-primary btn-sm px-3" type="button" onclick="">Following</button>
                <!-- 메세지 보내기 -->
                <button class="btn btn-falcon-default btn-sm px-3 ms-2" type="button" onclick="">Message</button>
            </div>
              
              <!-- 프로필 수정? -->
              <div class="col ps-2 ps-lg-2">
                <div class="card mb-2">
                  <div class="card-header">
                    <h5 class="mb-0">자기소개</h5>
                  </div>
                  <div class="card-body bg-body-tertiary">
                  
                  <!-- 자기소개 수정 -->
                    <div class="profileForm">
                      <div class="col-lg-12" style="overflow:scroll; height:260px;">
                        <pre>${teacher.teacherIntro }</pre>
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
        <div class="col-12">
            <div class="col-lg-12 pe-lg-12">
              <div class="card mb-3">
                <div class="card-header">
                  <h5 class="mb-0">특강</h5>
                </div>
                <div class="card-body bg-body-tertiary" style="overflow:scroll; height: 430px;">
                  <div class="collapse" id="experience-form1">
                    <form class="row">
                      <div class="col-3 mb-3 text-lg-end">
                        <label class="form-label" for="company">Company</label>
                      </div>
                      <div class="col-9 col-sm-7 mb-3">
                        <input class="form-control form-control-sm" id="company" type="text">
                      </div>
                      <div class="col-3 mb-3 text-lg-end">
                        <label class="form-label" for="position">Position</label>
                      </div>
                      <div class="col-9 col-sm-7 mb-3">
                        <input class="form-control form-control-sm" id="position" type="text">
                      </div>
                      <div class="col-3 mb-3 text-lg-end">
                        <label class="form-label" for="city">City </label>
                      </div>
                      <div class="col-9 col-sm-7 mb-3">
                        <input class="form-control form-control-sm" id="city" type="text">
                      </div>
                      <div class="col-3 mb-3 text-lg-end">
                        <label class="form-label" for="exp-description">Description </label>
                      </div>
                      <div class="col-9 col-sm-7 mb-3">
                        <textarea class="form-control form-control-sm" id="exp-description" rows="3"> </textarea>
                      </div>
                      <div class="col-9 col-sm-7 offset-3 mb-3">
                        <div class="form-check mb-0 lh-1">
                          <input class="form-check-input" type="checkbox" id="experience-current" checked="checked">
                          <label class="form-check-label mb-0" for="experience-current">I currently work here
                          </label>
                        </div>
                      </div>
                      <div class="col-3 text-lg-end">
                        <label class="form-label" for="experience-form2">From </label>
                      </div>
                      <div class="col-9 col-sm-7 mb-3">
                        <input class="form-control form-control-sm text-500 datetimepicker flatpickr-input" id="experience-form2" type="text" placeholder="dd/mm/yy" data-options="{&quot;dateFormat&quot;:&quot;d/m/y&quot;,&quot;disableMobile&quot;:true}" readonly="readonly">
                      </div>
                      <div class="col-3 text-lg-end">
                        <label class="form-label" for="experience-to">To </label>
                      </div>
                      <div class="col-9 col-sm-7 mb-3">
                        <input class="form-control form-control-sm text-500 datetimepicker flatpickr-input" id="experience-to" type="text" placeholder="dd/mm/yy" data-options="{&quot;dateFormat&quot;:&quot;d/m/y&quot;,&quot;disableMobile&quot;:true}" readonly="readonly">
                      </div>
                      <div class="col-9 col-sm-7 offset-3">
                        <button class="btn btn-primary" type="button">Save</button>
                      </div>
                    </form>
                    <div class="border-dashed-bottom my-4"></div>
                  </div>
                  <div class="d-flex"><a href="#!"> <img class="img-fluid" src="/resources/public/assets/img/logos/g.png" alt="" width="56"></a>
                    <div class="flex-1 position-relative ps-3">
                      <h5 class="fs-9 mb-0"><a href="#!">Big Data Engineer</a><span data-bs-toggle="tooltip" data-bs-placement="top" aria-label="Verified" data-bs-original-title="Verified"><svg class="svg-inline--fa fa-check-circle fa-w-16 text-primary" data-fa-transform="shrink-4 down-2" aria-hidden="true" focusable="false" data-prefix="fa" data-icon="check-circle" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="" style="transform-origin: 0.5em 0.625em;"><g transform="translate(256 256)"><g transform="translate(0, 64)  scale(0.75, 0.75)  rotate(0 0 0)"><path fill="currentColor" d="M504 256c0 136.967-111.033 248-248 248S8 392.967 8 256 119.033 8 256 8s248 111.033 248 248zM227.314 387.314l184-184c6.248-6.248 6.248-16.379 0-22.627l-22.627-22.627c-6.248-6.249-16.379-6.249-22.628 0L216 308.118l-70.059-70.059c-6.248-6.248-16.379-6.248-22.628 0l-22.627 22.627c-6.248 6.248-6.248 16.379 0 22.627l104 104c6.249 6.249 16.379 6.249 22.628.001z" transform="translate(-256 -256)"></path></g></g></svg><!-- <small class="fa fa-check-circle text-primary" data-fa-transform="shrink-4 down-2"></small> Font Awesome fontawesome.com --></span>
                      </h5>
                      <p class="text-1000 mb-0">Apr 2012 - Present • 6 yrs 9 mos</p>
                      <p class="text-1000 mb-0">California, USA</p>
                      <div class="border-bottom border-dashed my-3"></div>
                    </div>
                  </div>
                  <div class="d-flex"><a href="#!"> <img class="img-fluid" src="/resources/public/assets/img/logos/apple.png" alt="" width="56"></a>
                    <div class="flex-1 position-relative ps-3">
                      <h6 class="fs-9 mb-0"><a href="#!">Software Engineer</a><span data-bs-toggle="tooltip" data-bs-placement="top" aria-label="Verified" data-bs-original-title="Verified"><svg class="svg-inline--fa fa-check-circle fa-w-16 text-primary" data-fa-transform="shrink-4 down-2" aria-hidden="true" focusable="false" data-prefix="fa" data-icon="check-circle" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="" style="transform-origin: 0.5em 0.625em;"><g transform="translate(256 256)"><g transform="translate(0, 64)  scale(0.75, 0.75)  rotate(0 0 0)"><path fill="currentColor" d="M504 256c0 136.967-111.033 248-248 248S8 392.967 8 256 119.033 8 256 8s248 111.033 248 248zM227.314 387.314l184-184c6.248-6.248 6.248-16.379 0-22.627l-22.627-22.627c-6.248-6.249-16.379-6.249-22.628 0L216 308.118l-70.059-70.059c-6.248-6.248-16.379-6.248-22.628 0l-22.627 22.627c-6.248 6.248-6.248 16.379 0 22.627l104 104c6.249 6.249 16.379 6.249 22.628.001z" transform="translate(-256 -256)"></path></g></g></svg><!-- <small class="fa fa-check-circle text-primary" data-fa-transform="shrink-4 down-2"></small> Font Awesome fontawesome.com --></span>
                      </h6>
                      <p class="text-1000 mb-0">Jan 2012 - Apr 2012 • 4 mos</p>
                      <p class="text-1000 mb-0">California, USA</p>
                      <div class="border-bottom border-dashed my-3"></div>
                    </div>
                  </div>
                  <div class="d-flex"><a href="#!"> <img class="img-fluid" src="/resources/public/assets/img/logos/nike.png" alt="" width="56"></a>
                    <div class="flex-1 position-relative ps-3">
                      <h6 class="fs-9 mb-0"><a href="#!">Mobile App Developer</a><span data-bs-toggle="tooltip" data-bs-placement="top" aria-label="Verified" data-bs-original-title="Verified"><svg class="svg-inline--fa fa-check-circle fa-w-16 text-primary" data-fa-transform="shrink-4 down-2" aria-hidden="true" focusable="false" data-prefix="fa" data-icon="check-circle" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="" style="transform-origin: 0.5em 0.625em;"><g transform="translate(256 256)"><g transform="translate(0, 64)  scale(0.75, 0.75)  rotate(0 0 0)"><path fill="currentColor" d="M504 256c0 136.967-111.033 248-248 248S8 392.967 8 256 119.033 8 256 8s248 111.033 248 248zM227.314 387.314l184-184c6.248-6.248 6.248-16.379 0-22.627l-22.627-22.627c-6.248-6.249-16.379-6.249-22.628 0L216 308.118l-70.059-70.059c-6.248-6.248-16.379-6.248-22.628 0l-22.627 22.627c-6.248 6.248-6.248 16.379 0 22.627l104 104c6.249 6.249 16.379 6.249 22.628.001z" transform="translate(-256 -256)"></path></g></g></svg><!-- <small class="fa fa-check-circle text-primary" data-fa-transform="shrink-4 down-2"></small> Font Awesome fontawesome.com --></span>
                      </h6>
                      <p class="text-1000 mb-0">Jan 2011 - Apr 2012 • 1 yr 4 mos</p>
                      <p class="text-1000 mb-0">Beaverton, USA</p>
                    </div>
                  </div>
                </div>
              </div>
              </div>
              </div>
      </div>
      
<!-- 마이 프로필 비동기 처리 -->
<script src="${pageContext.request.contextPath }/resources/js/app/sns/snsTeacherProfile.js"></script>