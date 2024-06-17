/**
 * 		메세지 리스트 비동기 페이징
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
	
	console.log("검색테스트 : ", data);
	
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
			// console.log("메시지 리스트 ::::: ", resp.messageList);
			let lengths = resp.messageList.length;
			// console.log("길이 체크 :::: ", lengths);
			if(resp.messageList.length == 0) {
				console.log("메세지없음");
				Swal.fire({
				title: '메세지 없음',
				text: '메시지가 존재하지않습니다.',
				icon: 'error',
			})
			}else {
				for(let i=0; i<lengths; i++) {
					list +=
						`
				            <div class="card-body fs-10 border-top border-200 p-0" id="emails" style="margin: 50px;">
									<!-- 쪽지상세보기 -->
					              <div class="row border-bottom border-200 hover-actions-trigger hover-shadow py-2 px-1 mx-0 bg-white dark__bg-dark" data-href="/resources/public/app/email/email-detail.html">
					                <div class="btn-group btn-group-sm z-2 hover-actions end-0 me-3" style="width: 10rem;">
					                <!-- 중요쪽지 -->
					                  <button onclick="messageRestore(this)" data-num="${resp.messageList[i].messageNo}" class="btn btn-tertiary hover-bg-200" title="보관해제" type="button" data-bs-toggle="tooltip" data-bs-placement="top" aria-label="Archive" data-bs-original-title="Archive">
											<svg class="svg-inline--fa fa-archive fa-w-16" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="archive" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M32 448c0 17.7 14.3 32 32 32h384c17.7 0 32-14.3 32-32V160H32v288zm160-212c0-6.6 5.4-12 12-12h104c6.6 0 12 5.4 12 12v8c0 6.6-5.4 12-12 12H204c-6.6 0-12-5.4-12-12v-8zM480 32H32C14.3 32 0 46.3 0 64v48c0 8.8 7.2 16 16 16h480c8.8 0 16-7.2 16-16V64c0-17.7-14.3-32-32-32z"></path></svg>
									  </button>
					                </div>
					                <div class="col-auto d-none d-sm-block">
					                  <div class="d-flex bg-white dark__bg-dark">
					                    <div class="form-check mb-0 fs-9">
					                      <input class="messageChk form-check-input" name="messageChk" type="checkbox" id="checkbox-2" value="${resp.messageList[i].messageNo}" data-bulk-select-row="data-bulk-select-row">
					                    </div>
					                  </div>
					                </div>
					                <div class="col col-md-9 col-xxl-10">
					                  <div class="row">
					                    <div class="col-md-4 col-xl-3 col-xxl-2 ps-md-0 mb-1 mb-md-0">
					                      <div class="d-flex position-relative">
											<!-- 쪽지 상세보기 -->
					                        <div class="flex-1 ms-2">
												<a class="fw-bold stretched-link inbox-link" href="${cPath}/message/${resp.messageList[i].messageNo}">${resp.messageList[i].senderId}</a>
					                        </div>
					                      </div>
					                    </div>
					                    <div class="col">
											<a class="d-block inbox-link" href="${cPath}/message/${resp.messageList[i].messageNo}">
												<span class="fw-bold">${resp.messageList[i].messageSj}</span>
											</a>
					                    </div>
					                  </div>
					                </div>
					                <div class="col-auto ms-auto d-flex flex-column justify-content-between">
										<span class="fw-bold">${resp.messageList[i].messageSendDe}</span>
										<svg class="svg-inline--fa fa-star fa-w-18 text-warning ms-auto mb-2 d-sm-none" data-fa-transform="down-7" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="star" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" data-fa-i2svg="" style="transform-origin: 0.5625em 0.9375em;"><g transform="translate(288 256)"><g transform="translate(0, 224)  scale(1, 1)  rotate(0 0 0)"><path fill="currentColor" d="M259.3 17.8L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0z" transform="translate(-288 -256)"></path></g></g></svg>
										</div>
					              </div>
				        	</div>
						`
					}
				}
				$listBody.html(list);
			// $searchForm.find("[name=currentPage]").val(1);
		}
	});
});
$("#searchBtn").on("click", function(event) {
	let $searchUI = $(this).parents("#searchUI");
	$searchUI.find(":input[name]").each(function(idx, ipt) {
		let name = this.name;
		let value = $(this).val();
		searchForm[name].value = value;
	});
	$searchForm.submit();
	console.log("테스트 : ", messageList);
});


function paging(page) {
	$searchForm[0].currentPage.value = page;
	$searchForm.submit();

}
// 메세지 전체 체크
function messageChkAll() {
	let chk = $('.messageChk').is(':checked');
	console.log(chk);
	if(chk) {
		$('input:checkbox[name="messageChk"]').prop('checked',false);
	}else {
		$('input:checkbox[name="messageChk"]').prop('checked',true);
	}

}


//	메세지 복구
function messageRestore(message) {
	let url = `${cPath}/message/importantRevert.do`;
	let messageNo = message.dataset.num;
	console.log("복구 할 메세지 번호 : ", messageNo);
	
	$.ajax({
		url : url,
		method : "POST",
		contentType:"application/json",
		data : messageNo,
		success:function(resp) {
			console.log(resp);
			Swal.fire({
				title: '복구완료',
				text: '메세지 복구가 완료되었습니다.',
				icon: 'success',
			}).then(()=>{
				paging(1);
			})
		}
	})
}

// 선택된 메시지 복구
function messageChkRestore() {
	let url = `${cPath}/message/importantRevert.do`;
	let chkBox = $('input:checkbox[name="messageChk"]');
	let end = 1;

	// DOM 객체가 아닌 JQuery 객체 이므로 이렇게 뽑아내야됨;;
	chkBox.each(function() {
		const isChecked = $(this).is(':checked');
		// console.log($(this).attr('id'), isChecked);
		if(isChecked == true){
			end++;
			let messageNo = $(this).val();
			console.log("메세지 넘버 : ", $(this).val());
			console.log("트루 : ", isChecked);
			$.ajax({
				url : url,
				method : "POST",
				contentType:"application/json",
				data : messageNo,
				success:function(resp) {
					console.log(resp);
				}
			})
		}else {
			console.log("메세지 넘버 : ", $(this).val());
			console.log("풜쓰 : ", isChecked);
		}
	});
	if(end > 1) {
		Swal.fire({
			title: '복구완료',
			text: end-1+'개의 메세지 복구 완료되었습니다.',
			icon: 'success',
		})
	}
	paging(1);
	console.log("체크박스 할 갯수 : ", lengths);
	console.log("체크박스 밸류 : ", test2);
}
