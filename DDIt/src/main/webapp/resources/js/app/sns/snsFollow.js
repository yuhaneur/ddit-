/**
 * 		1. sns 메인 페이지에서 추천 팔로우 리스트(userList) 출력
 *		2. 팔로우 버튼 클릭(onclick 으로 구현) 시 리스트 재호출 
			( 추천 팔로우 리스트에서 해당 회원 지워짐 )
 */

$(document).ready(function(){
	unFollowList();
	followingCount();
	followerCount();
});


// 추천 팔로우 리스트
function unFollowList() {
	console.log("유저아이디 : ", userId);
	let url = `${cPath}/sns/follow${userId}`;
	let unFollowList = document.querySelector(".unFollowList");
	
	// console.log(unFollowList);
	unFollowList.innerHTML = '';
	$.ajax({
		url : url
		,method : "GET"
		,dataType : "JSON"
		,success:function(res){
			console.log("추천 팔로우 리스트 테스트 : ", res);
			for(let i=0; i<res.followVOList.length; i++) {
				console.log("추천 팔로우 정보 : ", res.followVOList[i]);
				unFollowList.innerHTML += 
				`
					<form action="${cPath}/snsProfile/${res.followVOList[i].userId}" method="GET" class="profileMove">
						<div class="d-flex">
						        <div class="avatar avatar-3xl">
						          <img class="rounded-circle" src="/atch/${res.followVOList[i].streFileName}" alt="">
						        </div>
						        <div class="flex-1 ms-2">
						          <h6 class="mb-0"><a href="#!" onclick="profile(this)" data-user="${res.followVOList[i].userId}" ">${res.followVOList[i].userId}</a></h6>
						          	<button onclick="follow(this)" data-user-id="${res.followVOList[i].userId}" class="btn btn-tertiary btn-sm py-0 mt-1 border" type="button">
										<svg class="svg-size2" data-fa-transform="shrink-5 left-2" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="user-plus" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512" data-fa-i2svg="" style="transform-origin: 0.5em 0.5em;"><g transform="translate(320 256)"><g transform="translate(-64, 0)  scale(0.6875, 0.6875)  rotate(0 0 0)"><path fill="currentColor" d="M624 208h-64v-64c0-8.8-7.2-16-16-16h-32c-8.8 0-16 7.2-16 16v64h-64c-8.8 0-16 7.2-16 16v32c0 8.8 7.2 16 16 16h64v64c0 8.8 7.2 16 16 16h32c8.8 0 16-7.2 16-16v-64h64c8.8 0 16-7.2 16-16v-32c0-8.8-7.2-16-16-16zm-400 48c70.7 0 128-57.3 128-128S294.7 0 224 0 96 57.3 96 128s57.3 128 128 128zm89.6 32h-16.7c-22.2 10.2-46.9 16-72.9 16s-50.6-5.8-72.9-16h-16.7C60.2 288 0 348.2 0 422.4V464c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48v-41.6c0-74.2-60.2-134.4-134.4-134.4z" transform="translate(-320 -256)"></path></g></g>
										</svg>
										<span class="fs-10">팔로우</span>
									</button>
						          <div class="border-bottom border-dashed my-3"></div>
						        </div>
						</div>
					</form>
				`;
			}
		}
	})
}

// 팔로잉 카운트
function followingCount() {
	let url = `${cPath}/sns/followingCount${userId}`;
	let followingCount = document.querySelector(".followingCount");
	$.ajax({
		url : url
		,method : "GET"
		,dataType : "JSON"
		,success:function(res) {
			followingCount.innerHTML = 
			`
				<h4 class="text-700" data-countup="{&quot;endValue&quot;:79563}">${res}</h4>
			`
		}
	})
	
}

// 팔로워 카운트
function followerCount() {
	let url = `${cPath}/sns/followerCount${userId}`;
	let followerCount = document.querySelector(".followerCount");
	$.ajax({
		url : url
		,method : "GET"
		,dataType : "JSON"
		,success:function(res) {
			followerCount.innerHTML = 
			`
				<h4 class="text-700" data-countup="{&quot;endValue&quot;:120302}">${res}</h4>
			`
		}
	})
	
}


// 팔로우
function follow(btn) {
	console.log("팔로우 : ",btn.dataset.userId);
	let url = `${cPath}/sns/followInsert.do`;
	let followUserId = btn.dataset.userId;
	let data = {
		userId : userId,
		userId2 : followUserId
	}
	$.ajax({
		url : url
		,method : "POST"
		,dataType : "JSON"
		,data : JSON.stringify(data)
		,contentType:"application/json"
		,success:function(res) {
			Swal.fire({
				title: '팔로우 완료',
				text: `${followUserId} 님을 팔로우 등록하였습니다.`,
				icon: 'success',
			}).then(()=>{
				unFollowList();
				followingCount();
				followerCount();
			})
		}
	})
}


// 상대방 프로필로 이동 동기로 보내야지 뭐하는거임?
function profile(btn) {
	btn.closest(".profileMove").submit();
}