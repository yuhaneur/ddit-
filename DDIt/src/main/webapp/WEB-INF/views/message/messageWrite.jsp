<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<security:authentication property="principal" var="principal"/>

<script>
	const userId = "${principal.realUser.userId }";
	const cPath = document.body.dataset.contextPath;
</script>

<style>
  .imgBtn{
  margin : 20px;
  padding: 6px 25px;
  background-color: #2c7be5;
  border-radius: 4px;
  color: white;
  cursor: pointer;
}
</style>
    <form class="messageForm card">
      <div class="card-header bg-body-tertiary">
        <h5 class="mb-0">쪽지 쓰기</h5>
      </div>
      <div class="card-body p-0">
        <div class="border border-top-0 border-200">
        	<input type="hidden" class="senderId" id="senderId" name="senderId">
        	<!-- 로그인한 사용자를 hidden에 값 넣어줌. -->
        	<script>
	        	document.getElementById("senderId").value = userId;
	        	console.log("로그인한 사용자 : ", document.getElementById("senderId").value = userId);
        	</script>
         	<input class="userId form-control border-0 rounded-0 outline-none px-x1" id="email-to" type="text" aria-describedby="email-to" name="userId" placeholder="받는 사람" />
        </div>
        <div class="border border-y-0 border-200">
          <input class="messageSj form-control border-0 rounded-0 outline-none px-x1" id="email-subject" type="text" aria-describedby="email-subject" name="messageSj" placeholder="제목" />
        </div>
		<!-- 이미지 첨부 -->
			<label class="imgBtn" for="imgUp">
				이미지 업로드
			</label>
				<input id="imgUp" class="imgUp" style="display: none;" type="file" name="images" multiple />
		<!-- 내용 위치 -->
        <div class="min-vh-50 email-compose-textarea">
          	<div id="previews">
            </div>
	          <textarea class="messageCn tinymce d-none" data-tinymce="data-tinymce" name="messageCn">
	          </textarea>
        </div>
        <div class="bg-body-tertiary px-x1 py-3">
          <div class="d-inline-flex flex-column">

          </div>
        </div>
      </div>
      <div class="card-footer border-top border-200 d-flex flex-between-center">
        <div class="d-flex align-items-center">
          <button class="messageInsertBtn btn btn-primary btn-sm px-5 me-2" type="submit">보 내 기</button>
          <!-- 첨부파일 / 이미지 처리할 때 사용할 것. -->
          <!-- 
          <input class="d-none" id="email-attachment" type="file" />
          <label class="me-2 btn btn-tertiary btn-sm mb-0 cursor-pointer" for="email-attachment" data-bs-toggle="tooltip" data-bs-placement="top" title="Attach files"><span class="fas fa-paperclip fs-8" data-fa-transform="down-2"></span></label>
          <input class="d-none" id="email-image" type="file" accept="image/*" />
          <label class="btn btn-tertiary btn-sm mb-0 cursor-pointer" for="email-image" data-bs-toggle="tooltip" data-bs-placement="top" title="Attach images"><span class="fas fa-image fs-8" data-fa-transform="down-2"></span></label>
           -->
        </div>
        <div class="d-flex align-items-center">
          <button class="btn btn-tertiary btn-sm" type="button" data-bs-toggle="tooltip" data-bs-placement="top" title="삭제"><span class="fas fa-trash"></span></button>
        </div>
      </div>
    </form>
    
<!-- 이미지 미리보기 -->          
<script src="${pageContext.request.contextPath }/resources/js/app/message/messageImage.js"></script>