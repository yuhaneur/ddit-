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
                <h5 class="mb-0">비밀번호 찾기</h5><small>아이디와 이메일주소를 입력해주세요.</small>
                <form class="mt-4">
                  <input class="form-control" type="text" id="input1" placeholder="아이디를 입력해주세요"><br>
                  <input class="form-control" type="email" id="input2" placeholder="이메일을 입력해주세요">
                  <div class="mb-3"></div>
                  <button class="btn btn-primary d-block w-100 mt-3" id="btn1" type="button">비밀번호 찾기</button>
                </form><p class="fs-10 text-600" id = "p1" style="color: gray;"></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
    
<script>

	let pTag = document.getElementById("p1");
	let btn = document.getElementById("btn1");
	let inputTag1 = document.getElementById("input1");
	let inputTag2 = document.getElementById("input2");
	
	btn.addEventListener("click",function(){
		console.log(inputTag1.value);
		console.log(inputTag2.value);
 		pTag.innerText = "";
		
 		  fetch('${pageContext.request.contextPath}/find/Pw', {
 			  method: 'POST',
 			  headers : {
 				 "Accept": 'application/json',
 				 "content-type" : "application/json"
 			  },
 			  body: JSON.stringify({
 				 "userId" : inputTag1.value,
 				 "studentMail" : inputTag2.value
 			  })
 			})
 			  .then(response => response.json())
 			  .then(data => {
 				 console.log(data);
 				  if(data.userId != null){
 					 pTag.innerText = "입력하신 이메일로 임시 비밀번호가 발송 되었습니다."
 				  }
 			  })
 			  .catch(error =>  pTag.innerText = "일치하는 아이디가 없습니다.");  
 	});
	
</script>