/**
 * 
 */
$(document).ready(function(){
	$searchForm.submit();
});

const $searchForm = $("#searchForm").on("submit", function(event){
	event.preventDefault();
	let $pagingArea = $(".paging-area");
	let $listBody = $(".list-body");
	let action = $("#searchForm").action;
	
	let data = $("#searchForm").serialize();
	
	$.ajax({
		url:action,
		data:data,
		dataType:"json",
		success:function(resp){
			// console.log("resp:::::::",resp);
			$pagingArea.empty();
			$listBody.empty();
			let list ='';
			$pagingArea.html(resp.pagingHTML);
			console.log("팔로워 리스트 ::::: ", resp.followerList);
			let lengths = resp.followerList.length;
			console.log("길이 체크 :::: ", lengths);
			if(lengths == 0) {
				Swal.fire({
				 	title: '정보없음',
		   		    text: '해당 회원은 리스트에 없습니다.',
		   		    icon: 'error'
		         })
			}else {
				for(let i=0; i<lengths; i++) {
					if(resp.followerList[i].teacherName == null) {
						list +=
							`
					                <div class="col-6 col-md-4 col-lg-3 col-xxl-2 mb-1">
					                  <div class="bg-white dark__bg-1100 p-3 h-100">
					                  	<a href="/pages/user/profile.html">
					                  		<img class="img-thumbnail img-fluid rounded-circle mb-3 shadow-sm" src="/atch/${resp.followerList[i].studentProfileImage}" alt="" style="width:100px; height:100px;">
					                  	</a>
					                    <h6 class="mb-1">
					                    	<a href="/pages/user/profile.html">${resp.followerList[i].studentName}</a>
					                    </h6>
					                  </div>
					                </div>
							`
					}else {
						list +=
							`
					            <div class="card-body bg-body-tertiary px-1 py-0">
					              <div class="row g-0 text-center fs-10">
					                <div class="col-6 col-md-4 col-lg-3 col-xxl-2 mb-1">
					                  <div class="bg-white dark__bg-1100 p-3 h-100">
					                  	<a href="/pages/user/profile.html">
					                  		<img class="img-thumbnail img-fluid rounded-circle mb-3 shadow-sm" src="/atch/${resp.followerList[i].teacherProfileImage}" alt="" width="100">
					                  	</a>
					                    <h6 class="mb-1">
					                    	<a href="/pages/user/profile.html">${resp.followerList[i].teacherName}</a>
					                    </h6>
					                  </div>
					                </div>
					                </div>
					              </div>
							`
					}
				}
			}
			$listBody.html(list);
		}
	});
});

$("#searchBtn").on("click", function(event) {
	let $searchUI = $(this).parents("#searchUI");
	$searchUI.find(":input[name]").each(function(idx, ipt) {
		let name = this.name;
		let value = $(this).val();
		searchForm[name].value = value;
		console.log("검색 : ", searchForm[name].value);
	});
	$searchForm.submit();
});

function paging(page) {
	$searchForm[0].currentPage.value = page;
	$searchForm.submit();

}