<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<security:authorize url="/auth/logout.do">
	<security:authentication property="principal" var="principal" />
</security:authorize>
<%-- <input type="hidden" id="userId" value="${principal.realUser.userId }"> --%>
<nav class="navbar navbar-light navbar-vertical navbar-expand-xl navbar-card">

 <div class="d-flex align-items-center">
   <div class="toggle-icon-wrapper">

     <button class="btn navbar-toggler-humburger-icon navbar-vertical-toggle" data-bs-toggle="tooltip" data-bs-placement="left" title="Toggle Navigation"><span class="navbar-toggle-icon"><span class="toggle-line"></span></span></button>

   </div><a class="navbar-brand" href="${pageContext.request.contextPath}/resources/public/index.html">
     <div class="d-flex align-items-center py-3"><img class="me-2" src="${pageContext.request.contextPath}/resources/images/DDIT2.png" alt="" width="40" /><span class="font-sans-serif text-primary">DDIT</span>
     </div>
   </a>
 </div>
 <div class="collapse navbar-collapse" id="navbarVerticalCollapse">
   <div class="navbar-vertical-content scrollbar">
    <%-- NAV 시작 --%>
     <ul class="navbar-nav flex-column mb-3" id="navbarVerticalNav">
       <li class="nav-item">
         <!-- label-->
         <div class="row navbar-vertical-label-wrapper mt-3 mb-2">
           <div class="col-auto navbar-vertical-label"><h5>클래스</h5>
           </div>
           <div class="col ps-0">
             <hr class="mb-0 navbar-vertical-divider" />
           </div>
         </div>

         <!-- parent pages-->
        <security:authorize url="/auth/logout.do">
		<security:authentication property="principal" var="principal" />
	         <security:authorize access="hasRole('TEACHER')">
	         <a href="${pageContext.request.contextPath}/school/teacher" style="margin-top: 10px;">
	           <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-graduation-cap"></span></span><span class="nav-link-text ps-1">클래스</span>
	           </div>
	         </a>
	         </security:authorize>
	         <security:authorize access="hasRole('STUDENT')">
	         
	         <a href="${pageContext.request.contextPath}/school/${principal.realUser.student.classCode}" style="margin-top: 10px;">
	           <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-graduation-cap"></span></span><span class="nav-link-text ps-1">클래스</span>
	           </div>
	         </a>
	         </security:authorize>
		</security:authorize>
         
         <security:authorize access="hasRole('TEACHER')">
         <!-- parent pages--><a class="nav-link dropdown-indicator" href="#support-desk" role="button" data-bs-toggle="collapse" aria-expanded="false" aria-controls="support-desk">
           <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-ticket-alt"></span></span><span class="nav-link-text ps-1">통합운영관리</span>
           </div>
         </a>
         <ul class="nav collapse" id="support-desk">
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/educate">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">교육과정관리</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/school/classList">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">클래스관리</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
         </ul>
         </security:authorize>
       </li>
       <li class="nav-item" style="margin-top:35px;">
         <!-- label-->
         <div class="row navbar-vertical-label-wrapper mt-3 mb-2">
           <div class="col-auto navbar-vertical-label"><h5>프로젝트</h5>
           </div>
           <div class="col ps-0">
             <hr class="mb-0 navbar-vertical-divider" />
           </div>
         </div>
         <!-- parent pages-->
         <a href="${pageContext.request.contextPath}/project">
          <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-flag"></span></span><span class="nav-link-text ps-1">프로젝트</span>
          </div>
        </a>
         
<!-- 
      <a class="nav-link" href="${pageContext.request.contextPath}/resources/public/app/chat.html" role="button">
           <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-comments"></span></span><span class="nav-link-text ps-1">Chat</span>
           </div>
         </a> -->
 
       </li>
       <li class="nav-item" style="margin-top:35px;">
         <!-- label-->
         <div class="row navbar-vertical-label-wrapper mt-3 mb-2">
           <div class="col-auto navbar-vertical-label"><h5>커뮤니케이션</h5>
           </div>
           <div class="col ps-0">
             <hr class="mb-0 navbar-vertical-divider" />
           </div>
         </div>
          <!-- SNS pages-->
           <a class="nav-link dropdown-indicator" href="#social" role="button" data-bs-toggle="collapse" aria-expanded="false" aria-controls="social">
           <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-share-alt"></span></span><span class="nav-link-text ps-1">SNS</span>
           </div>
         </a>
         <ul class="nav collapse" id="social">
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/sns/feedList.do">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">피드</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/snsProfile/myProfile.do">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">마이 프로필</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/follower/list.do">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">팔로워</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
         </ul>

        <!-- 쪽지 pages-->
         <a class="nav-link dropdown-indicator" href="#email" role="button" data-bs-toggle="collapse" aria-expanded="false" aria-controls="email">
           <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-envelope-open"></span></span><span class="nav-link-text ps-1">쪽지</span>
           </div>
         </a>
         <ul class="nav collapse" id="email">
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/message/writeForm.do">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">쪽지쓰기</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/message/list.do">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">받은 쪽지함</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/message/importantList.do">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">중요 쪽지함</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
           <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/message/deleteList.do">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">휴지통</span>
               </div>
             </a>
             <!-- more inner pages-->
           </li>
         </ul>

       </li>
       <li class="nav-item" style="margin-top:35px;">
         <!-- label-->
         <div class="row navbar-vertical-label-wrapper mt-3 mb-2">
           <div class="col-auto navbar-vertical-label"><h5>아이템 상점</h5>
           </div>
           <div class="col ps-0">
             <hr class="mb-0 navbar-vertical-divider" />
           </div>
         </div>
         <!-- 아이템  pages-->
         <a class="nav-link dropdown-indicator" href="#e-commerce" role="button" data-bs-toggle="collapse" aria-expanded="false" aria-controls="e-commerce">
           <div class="d-flex align-items-center">
           <span class="nav-link-icon">
           <span class="fas fa-star-of-life"></span></span>
           <span class="nav-link-text ps-1">아이템</span>
           </div>
         </a>
         <ul class="nav collapse" id="e-commerce">
           <li class="nav-item">
           	<a class="nav-link" href="${pageContext.request.contextPath}/item" aria-expanded="false" aria-controls="e-commerce">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">구매.선물</span>
               </div>
             </a>
           </li>
           <li class="nav-item">
           	<a class="nav-link" href="${pageContext.request.contextPath}/preset" aria-expanded="false" aria-controls="e-commerce">
               <div class="d-flex align-items-center"><span class="nav-link-text ps-1">보유아이템</span>
               </div>
             </a>
           </li>
         </ul>
         <!-- 아이템  pages-->
         <a class="nav-link" href="${pageContext.request.contextPath}/point" role="button">
           <div class="d-flex align-items-center">
           <span class="nav-link-icon">
           <span class="far fa-list-alt"></span></span>
           <span class="nav-link-text ps-1">포인트 이력</span>
           </div>
         </a>
    </div>
  </div>
</nav>