<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
    .gender-group {
        display: flex;
        align-items: center;
    }
    .gender-group .form-check {
        margin-right: 10px;
    }
</style>

<main class="main" id="top">
  <div class="container" data-layout="container">
    <div class="row flex-center min-vh-100 py-6">
      <div class="col-sm-13 col-md-10 col-lg-8 col-xl-7 col-xxl-6">
        <a class="d-flex flex-center mb-4" href="${pageContext.request.contextPath}/index.do">
          <img class="me-2" src="${pageContext.request.contextPath}/resources/images/DDIT2.png" alt="" width="58">
          <span class="font-sans-serif text-primary fw-bolder fs-4 d-inline-block">DDIT</span>
        </a>
        <div class="card">
          <div class="card-body p-4 p-sm-5">
            <div class="row flex-between-center mb-2">
              <div class="col-auto">
                <h5>회원가입</h5>
              </div>
              <div class="col-auto fs-10 text-600"> <span><a href="${pageContext.request.contextPath}/auth/login.do">로그인</a></span></div>
            </div>
            <form>
              <div class="mb-3">
                <label for="username">아이디 <span class="text-danger">*</span></label>
                <div class="d-flex">
                  <input id="username" class="form-control" type="text" autocomplete="on" placeholder="아이디">
                  <button type="button" class="btn btn-secondary" style="white-space: nowrap;" onclick="checkUsername()">중복확인</button>
                </div>
                <div id="usernameFeedback" class="text-danger mt-2"></div>
              </div>
              <div class="row gx-2">
                <div class="mb-3 col-sm-6">
                  <label for="password">비밀번호 <span class="text-danger">*</span></label>
                  <input id="password" class="form-control" type="password" autocomplete="on" placeholder="비밀번호">
                </div>
                <div class="mb-3 col-sm-6">
                  <label for="confirm_password">비밀번호 확인 <span class="text-danger">*</span></label>
                  <input id="confirm_password" class="form-control" type="password" autocomplete="on" placeholder="비밀번호 확인">
                </div>
              </div>
              <div class="mb-3">
                <label for="name">이름 <span class="text-danger">*</span></label>
                <input id="name" class="form-control" type="text" autocomplete="on" placeholder="이름">
              </div>
              <div class="mb-3">
                <label for="email">이메일 주소 <span class="text-danger">*</span></label>
                <div class="d-flex">
                  <input id="email" class="form-control" type="email" autocomplete="on" placeholder="이메일 주소">
                  <button type="button" class="btn btn-secondary" style="white-space: nowrap;">인증번호 발송</button>
                </div>
              </div>
              <div class="mb-3">
                <label for="verification_code">인증번호 입력</label>
                <div class="d-flex">
                  <input id="verification_code" class="form-control" type="text" autocomplete="on" placeholder="인증번호 입력">
                  <button type="button" class="btn btn-secondary" style="white-space: nowrap;">확인</button>
                </div>
              </div>
              <div class="mb-3">
                <label for="phone">연락처 <span class="text-danger">*</span></label>
                <input id="phone" class="form-control" type="text" autocomplete="on" placeholder="연락처">
              </div>
              <div class="mb-3">
                <label class="form-label">성별</label>
                <div class="gender-group">
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="gender" id="male" value="male" checked="checked">
                    <label class="form-check-label" for="male">남성</label>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="gender" id="female" value="female">
                    <label class="form-check-label" for="female">여성</label>
                  </div>
                </div>
              </div>
              <div class="mb-3">
                <label for="postcode">우편번호</label>
                <div class="d-flex">
                  <input id="sample6_postcode" class="form-control" type="text" placeholder="우편번호">
                  <input type="button" class="btn btn-secondary" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
                </div>
              </div>
              <div class="mb-3">
                <label for="sample6_address">주소</label>
                <input id="sample6_address" class="form-control" type="text" placeholder="주소">
              </div>
              <div class="mb-3">
                <label for="sample6_detailAddress">상세주소</label>
                <input id="sample6_detailAddress" class="form-control" type="text" placeholder="상세주소">
              </div>
              <div class="mb-3">
                <input id="sample6_extraAddress" class="form-control" type="hidden" placeholder="참고항목">
              </div>
              <div class="form-check">
                <input class="form-check-input" type="checkbox" id="basic-register-checkbox">
                <label class="form-label" for="basic-register-checkbox">회원 가입 약관에 동의합니다. <span class="text-danger">*</span></label>
              </div>
              <div class="mb-3">
                <button class="btn btn-primary d-block w-100 mt-3" type="submit" name="submit">회원가입하기</button>
              </div>
            </form>
            <div class="position-relative mt-4">
              <hr>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</main>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
  function sample6_execDaumPostcode() {
    new daum.Postcode({
      oncomplete: function(data) {
        var addr = '';
        var extraAddr = '';

        if (data.userSelectedType === 'R') {
          addr = data.roadAddress;
        } else {
          addr = data.jibunAddress;
        }

        if (data.userSelectedType === 'R') {
          if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
            extraAddr += data.bname;
          }
          if (data.buildingName !== '' && data.apartment === 'Y') {
            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
          }
          if (extraAddr !== '') {
            extraAddr = ' (' + extraAddr + ')';
          }
          document.getElementById("sample6_extraAddress").value = extraAddr;
        } else {
          document.getElementById("sample6_extraAddress").value = '';
        }

        document.getElementById('sample6_postcode').value = data.zonecode;
        document.getElementById("sample6_address").value = addr;
        document.getElementById("sample6_detailAddress").focus();
      }
    }).open();
  }
</script>