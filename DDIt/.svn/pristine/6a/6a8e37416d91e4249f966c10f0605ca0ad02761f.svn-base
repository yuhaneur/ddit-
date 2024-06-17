<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<main class="main" id="top">
      <div class="container" data-layout="container">
        <div class="row flex-center min-vh-100 py-6 text-center">
          <div class="col-sm-10 col-md-8 col-lg-6 col-xl-5 col-xxl-4">
          <a class="d-flex flex-center mb-4" href="${pageContext.request.contextPath}/">
          		<img class="me-2" src="${pageContext.request.contextPath }/resources/images/DDIT1.png" alt="" width="58">
          		<span class="font-sans-serif text-primary fw-bolder fs-4 d-inline-block">DDIT</span>
          </a>
            <div class="card">
              <div class="card-body p-4 p-sm-5">
                <h5 class="mb-0">아이디 찾기</h5><small>이메일 주소를 입력하세요.</small>
                <form class="mt-4">
                  <input class="form-control" type="email" id="input1" placeholder="example@xxxx.com">
                  <div class="mb-3"></div>
                  <button class="btn btn-primary d-block w-100 mt-3" id="btn1" type="button">아이디 찾기</button>
                </form><p class="fs-10 text-600" id = "p1" style="color: gray;"></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
    
<script>
	function validateEmail() {
	    var email = document.getElementById("email").value;
	    var errorMessage = document.getElementById("error-message");
	
	    // 이메일 형식을 검증하기 위한 정규 표현식
	    var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
	
	    if (!emailPattern.test(email)) {
	        errorMessage.textContent = "유효한 이메일 주소를 입력하세요.";
	        return false; // 폼 제출을 막음
	    }
	
	    errorMessage.textContent = "";
	    return true; // 폼 제출을 허용
	}




	let pTag = document.getElementById("p1");
	let spanTag = document.getElementById("span1");
	let btn = document.getElementById("btn1");
	let inputTag = document.getElementById("input1");
	
	btn.addEventListener("click",function(){
 		pTag.innerText = "";
 		if(inputTag.value == ""){
 			inputTag.focus();
 			 pTag.innerText = "이메일 주소를 입력해주세요";
 			return;
 		}
		
 		  fetch('${pageContext.request.contextPath}/find/id', {
 			  method: 'POST',
 			  headers : {
 				 "Accept": 'application/json',
 				 "content-type" : "application/json"
 			  },
 			  body: inputTag.value,
 			})
 			  .then(response => response.json())
 			  .then(data => {
 				  if(data.userId != null){
 					 pTag.innerText = "당신의 아이디 : " + data.userId;
 				  }
 			  } )
 			  .catch(error =>  pTag.innerText = "일치하는 이메일이 없습니다.");  
 	});
	
</script>