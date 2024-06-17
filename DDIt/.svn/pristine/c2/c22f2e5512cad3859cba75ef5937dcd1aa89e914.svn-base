// 자기소개폼과 자기소개 값 가져오기 위한 전역변수
var profileForm = "";
var profileFormBtn = "";
var intro = "";

// 수정 이벤트 취소에 쓰일 전역 변수
var profileRevertForm = "";
var child = "";
var lengths = "";
var form = "";

$(document).ready(function(){
    myFollowerList();
});

function profileUpdateForm(btn) {
    userId = btn.dataset.id;
    intro = btn.dataset.intro;

    // 수정폼
    profileForm = btn.closest(".profileForm").children[0];
    // 취소 시 되돌릴 원래 폼.
    profileRevertForm = btn.closest(".profileForm");
    
    child = profileRevertForm.children;
    lengths = profileRevertForm.children.length;

    // 계속해서 form에 폼이 담기는 것을 방지하기 위해 빈 값으로 초기화
    form = '';
    for(let i=0; i<lengths; i++) {
        form += child[i].outerHTML;
    }

    // 수정 버튼폼
    profileFormBtn = btn.closest(".profileFormBtn");

    console.log(profileForm);
    console.log(profileFormBtn);
	
    console.log(intro);
	
	profileForm.innerHTML = 
    `
            <div class="col-lg-12">
            <label class="form-label" for="intro">자기소개</label>
            <textarea name="teacherIntro" id="intro" class="form-control" cols="30" rows="5">${intro}</textarea>
            </div>
            <div class="col-12 d-flex justify-content-end">
            </div>
    `


    profileFormBtn.innerHTML =
    `
        <button class="btn btn-primary"  onclick="profileUpdate(this)" data-id = "${userId}"  style="margin-top: 20px;">수 정</button>
        <button class="btn btn-danger"  onclick="profileRevert(this)" style="margin-top: 20px; margin-left: 20px;">취 소</button>
    `
}

function profileUpdate() {
    let studentIntro = document.querySelector("#intro").value;

    let url = `${cPath}/snsProfile/teacherProfile.do`;
    let method = "POST";
    let data = {
        teacherIntro : teacherIntro,
        userId : userId
    }

    $.ajax({
        url : url,
        method : method,
        data : JSON.stringify(data),
        dataType : "JSON",
        contentType : "application/json",
        success:function(resp){
            console.log("resp",resp);
            location.href = location.href;
        }
    })
}


// 수정 이벤트 취소
function profileRevert(btn) {
    let profileForm = btn.closest(".profileForm");
    profileForm.innerHTML = `${form}`;
}

// 팔로워 리스트
function myFollowerList() {
    let url = `${cPath}/snsProfile/myFollower${userId}`;
	let followerList = document.querySelector(".followerList");
    $.ajax({
        url : url,
        method : "GET",
		dataType : "JSON",
        success:function(res) {
            console.log("성공");
			if(res.followVOList.length < 1) {
				followerList.innerHTML += "팔로워가 없슴.";
			}else {
	            for(let i=0; i<res.followVOList.length; i++) {
	                followerList.innerHTML +=
	                `
	                    <div class="d-flex"><a href="#!"> <img class="img-fluid" src="/resources/public/assets/img/logos/g.png" alt="" width="56"></a>
	                    <div class="flex-1 position-relative ps-3">
	                    <h6 class="fs-9 mb-0">${res.followVOList[i].userId}<span data-bs-toggle="tooltip" data-bs-placement="top" aria-label="Verified" data-bs-original-title="Verified"><svg class="svg-inline--fa fa-check-circle fa-w-16 text-primary" data-fa-transform="shrink-4 down-2" aria-hidden="true" focusable="false" data-prefix="fa" data-icon="check-circle" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="" style="transform-origin: 0.5em 0.625em;"><g transform="translate(256 256)"><g transform="translate(0, 64)  scale(0.75, 0.75)  rotate(0 0 0)"><path fill="currentColor" d="M504 256c0 136.967-111.033 248-248 248S8 392.967 8 256 119.033 8 256 8s248 111.033 248 248zM227.314 387.314l184-184c6.248-6.248 6.248-16.379 0-22.627l-22.627-22.627c-6.248-6.249-16.379-6.249-22.628 0L216 308.118l-70.059-70.059c-6.248-6.248-16.379-6.248-22.628 0l-22.627 22.627c-6.248 6.248-6.248 16.379 0 22.627l104 104c6.249 6.249 16.379 6.249 22.628.001z" transform="translate(-256 -256)"></path></g></g></svg><!-- <small class="fa fa-check-circle text-primary" data-fa-transform="shrink-4 down-2"></small> Font Awesome fontawesome.com --></span>
	                    </h6>
	                    <p class="mb-1"> <a href="#!">프로필 이동</a></p>
	                    <div class="border-bottom border-dashed my-3"></div>
	                    </div>
	                    </div>
	                `;
	            }
			}
        }
    })
}

// 해당 팔로워 회원의 프로필로 이동
