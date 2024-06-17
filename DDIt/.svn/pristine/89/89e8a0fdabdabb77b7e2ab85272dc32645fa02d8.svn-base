$(document).ready(function(){
    myFollowerList();
});

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
			console.log(res);
			if(res.followVOList.length < 1) {
				followerList.innerHTML += "팔로워가 없습니다.";
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