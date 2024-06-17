<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<link href="${pageContext.request.contextPath}/resources/css/assignment.css" rel="stylesheet">

<style>
	#assignmentInsertModal{
		position: fixed;
        width:57vw;
        height:30vh;
        left:670px;
        top:163px;
        background-color:#EBF7FF;
        z-index: 1000;
        display: none;
        overflow: auto;
	}
	#assignmentDetailModal{
		position: fixed;
        width:44vw;
        height:50vh;
        left:400px;
        top:163px;
        background-color:#FCFCFC;
        z-index: 1000;
        display: none;
        overflow: auto;
	}
	#submitAssignmentModal{
		position: fixed;
        width:21vw;
        height:24vh;
        left:1300px;
        top:163px;
        background-color:#FCFCFC;
        z-index: 2000;
        display: none;
        overflow: auto;
	}
	
</style>
<input type="hidden" id="userId" value="${userId }">
<input type="hidden" id="classCode" value="${classCode }">
<div>
	<div class="dbE-zlo">
	    <div class="v9T-o6g bFjUmb-4sk">
	        <div class="qyN-ek2">
	            <div class="PFL-ylv style-ywYSY" id="style-ywYSY">
	                <div class="VVn-k3g ra2-ko3 WFU-kie"></div>
	            </div>
	            <div class="T4t-mdo">
	                <h1 class="tNG-6dm YrFhrf-rs2 YVv-x9z" style="">${classVo.className}-${classVo.edcCrseRound }회차</h1>
	                <div class="qFm-v3s z3vRcc-wik YVv-x9z">${fn:substring(classVo.classCreationDe,0,4) }년 ${fn:substring(classVo.classCreationDe,5,7) }월반</div>
	            </div>
	        </div>
	    </div>
	    <!-- 기한이 마감되는곳 시작 -->
	    <div class="M7z-rca">
	        <aside class="DXL-2m4">
	            <div class="dsW-tbi">
	                <div></div>
	                <div>
	                    <div class="d4F-1gk LBl-jwr NA2-toi style-NKdm1" id="style-NKdm1">
	                        <div class="NGV-vx8 QRi-557"><img src="https://fonts.gstatic.com/s/i/productlogos/meet_2020q4/v6/web-48dp/logo_meet_2020q4_color_1x_web_48dp.png" class="Rpo-9op"><span class="asQ-8np">Meet</span>
	                            <div class="fPq-q9e"></div>
	                            <div class="JRt-s43 I12-k5s K2m-21c oxa-2yz">
	                                <div class="NWl-h2q"></div><span class="MhX-22v oJe-3eg"><span class="Lw7-dka snB-6az"><svg focusable="false" width="24" height="24" viewBox="0 0 24 24" class=" NMm5M">
	                                            <path d="M12 8c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zm0 2c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm0 6c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z"></path>
	                                        </svg></span></span>
	                                <div id="style-NpM4H" class="style-NpM4H">
	                                    <div class="JPd-omr hVN-g28">
	                                        <div class="Xvh-szg">
	                                            <div class="JAP-xof K0N-mya"></div>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <div></div>
	                <div class="d4F-1gk LBl-jwr">
	                    <div>
	                        <h2 class="EZr-wq4 sxa-93g">곧 마감되는 과제</h2>
	                        <div>
	                            <div class="lzi-o1i sdD-x9r">
	                            	<span>기한이 곧 돌아오는 과제가 없습니다.</span>
	                            </div>
	                            <div class="CHJ-3xl">
	                                <div class="VfPpkd-dgl2Hf-ppHlrf-vqx">
	                                    <div class="VfPpkd-4tc VfPpkd-LgbsSe-OWXEXe-zej ksB-2kd LQe-zw8 uBU-j4v n42-429">
	                                        <div class="VfPpkd-J1Ukfc-5jb"></div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </aside>
	        <!-- 기한이 마감되는곳 끝 -->
	        <main class="Sgw-zjj" style="height : 800px; background-color: #F6F6F6;" >
	            <div>
	                <div></div>
	            </div>
	            <section style="padding: 0;">
	            <c:forEach items="${assignmentList}" var="assignment">
	                <div onclick="assignmentDetail(this)" data-assignment-code="${assignment.assignmentCode }">
	                    <div></div>
	                    <div class="LBl-jwr Aop-ib3 TIu-hwf xWw-tz6 h7W-w3o DkD-t67">
	                        <div class="n4x-6fe">
	                            <div class="JZi-fhf QRi-557">
	                                <div class="Paz-dt2"></div>
	                                <div class="bxp-zaj qJJ-6jd MwO-izd bFjUmb-o2v Fh2-qoa"><svg focusable="false" width="24" height="24" viewBox="0 0 24 24" class=" NMm5M">
	                                        <path d="M18 2H6c-1.1 0-2 .9-2 2v16c0 1.1.9 2 2 2h12c1.1 0 2-.9 2-2V4c0-1.1-.9-2-2-2zm0 18H6V4h2v8l2.5-1.5L13 12V4h5v16z"></path>
	                                    </svg></div>
	                                <div class="GQW-tpo">
	                                    <div class="lzi-o1i tLD-afr">
	                                        <div class="QRi-557"><span class="YVv-x9z asQ-8np">${assignment.teacher.teacherName} 님이 새 자료 게시: ${assignment.assignmentSj}</span></div>
	                                    </div><span class="IMv-i7c dDK-pad YVv-x9z"><span class="Paz-dt2">생성일: 5월 27일</span><span> ${fn:substring(assignment.assignmentCreatDe,3,5) }월${fn:substring(assignment.assignmentCreatDe,6,8) }일</span><span class="IMv-i7c P35-akz"> – 삭제됨</span></span>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                 </div>
					</c:forEach>
	              </section>
            </main>
		</div>
	</div>
</div>

<!-- 과제등록 모달 시작 -->
<div class="card-body p-0 dflex" id="assignmentInsertModal">
	<form class="row gx-2" enctype="multipart/form-data" id="assignmentInsertForm" style="margin: 0;">
		<div class="col-sm-3 mb-3">
			<label class="form-label" for="basic-form-dob">제목</label>
			<input class="form-control border-0 rounded-0 outline-none px-x1" name="assignmentSj" type="text" placeholder="제목" />
		</div>
		<div class="col-sm-3 mb-3">
		    <label class="form-label" for="basic-form-dob">마감일</label>
		    <input class="form-control" id="basic-form-dob" name="assignmentEndDe" type="date" />
	    </div>
		<div class="col-sm-3 mb-3">
		    <label class="form-label" for="basic-form-dob">파일</label>
		    <input class="form-control" id="basic-form-dob" name="assignmentFiles" type="file" multiple="multiple" />
	    </div>
		<div class="min-vh-20 email-compose-textarea" style="max-width:75%;">
			<textarea name="assignmentCn" class="shadow-none form-control rounded-0 resize-none px-x1 border-y-0 border-200" placeholder="내용을 입력해주세요." rows="4"></textarea>
		</div>
	    <button id="insertAssignmentBtn">등록</button>
	    <button id="outModalBtn">취소</button>
	</form>
</div>
<!-- 과제등록 모달 끝 -->

<!-- 과제 디테일 모달 시작-->
<div class="fJ1Vac snipcss-kf86I" id="assignmentDetailModal">
</div>
<!-- 과제 디테일 모달 끝-->
<!-- 과제 제출모달 시작 -->
<div class="fJ1Vac snipcss-kf86I" id="submitAssignmentModal">
	<form id="submitForm" enctype="multipart/form-data">
		<input type="hidden" id="assCode" name="assignmentCode">
		<input class="form-control" name="assignmentHistFiles" type="file" multiple="multiple" />
		<textarea name="assignmentPresentnCn" class="shadow-none form-control rounded-0 resize-none px-x1 border-y-0 border-200" placeholder="내용을 입력해주세요." rows="4"></textarea>
	</form>
	<button class="btn btn-primary" id="submitBtn">제출</button>
	<button class="btn btn-primary" onclick="cancleSubmit()">취소</button>
</div>
<!-- 과제 제출모달 끝 -->
<script src="${pageContext.request.contextPath }/resources/js/app/school/assignment.js"/>
    