
// 메세지 보관
function messageImportant(message) {
	let url = `${cPath}/message/important.do`;
	let messageNo = message.dataset.num;
	console.log("보관 할 메세지 번호 : ", messageNo);
	
	$.ajax({
		url : url,
		method : "POST",
		contentType:"application/json",
		data : messageNo,
		success:function(resp) {
			console.log(resp);
			Swal.fire({
				title: '보관완료',
				text: '메시지 보관이 완료되었습니다.',
				icon: 'success',
			}).then(()=>{
				location.href = `${cPath}/message/importantList.do`;
			})
		}
	})
}

//	메세지 삭제
function messageDelete(message) {
	let url = `${cPath}/message/delete.do`;
	let messageNo = message.dataset.num;
	console.log("삭제 할 메세지 번호 : ", messageNo);
	
	$.ajax({
		url : url,
		method : "POST",
		contentType:"application/json",
		data : messageNo,
		success:function(resp) {
			console.log(resp);
			Swal.fire({
				title: '삭제완료',
				text: '메시지 삭제 완료되었습니다.',
				icon: 'success',
			}).then(()=>{
				location.href = `${cPath}/message/deleteList.do`;
			})
		}
	})
}

// 답장
function messageResend(message) {
	let messageNo = message.dataset.num;
	let url = `${cPath}/message/resendForm${messageNo}`;
	console.log("답장 할 메세지 번호");

	$.ajax({
		url : url,
		method : "GET",
		success:function(resp) {
			
		}
	})
}