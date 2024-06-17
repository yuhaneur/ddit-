/**
 * 		이미지 첨부 시 미리보기 제공
 */
var formData = new FormData();
const imgUp = document.querySelector(".imgUp");

imgUp.addEventListener('change', ()=> {
	const iframeElement = $('iframe').get(0).contentDocument;
	const previews = iframeElement.getElementById("tinymce");
	console.log("previews : ", previews);

	  for (const file of $('.messageForm input[type="file"]')[0].files) {
	    formData.append('messageFiles', file);
	    const reader = new FileReader();
	    reader.onloadend = ({ target }) => {
		var preview = document.createElement('img');
		preview.style.maxWidth = '400px';
		preview.style.maxHeight = '400px';
		preview.style.width = 'auto';
		preview.style.height = 'auto';
		preview.style.padding = '10px';
		
		preview.src = target.result;
		previews.appendChild(preview);
	    };
	    reader.readAsDataURL(file);
	}
});

$('.messageInsertBtn').click(function(event) {
	event.preventDefault();
	let url = `${cPath }/message/write.do`;
	let senderId = document.querySelector('.senderId').value;	
	let userId = document.querySelector('.userId').value;
	let messageSj = document.querySelector('.messageSj').value;
	let messageCn = document.querySelector('.messageCn').value;
	
	formData.append('senderId', senderId);
	formData.append('userId', userId); // 텍스트 데이터 추가
	formData.append('messageSj', messageSj); // 공개여부 데이터 추가
	formData.append('messageCn', messageCn); // 해시태그 추가

	// formData 값 콘솔 출력
	for (let key of formData.keys()) {
		console.log(key);
	}
	for (let value of formData.values()) {
		console.log(value);
	}
	
	$.ajax({
		url : url
		,method : "POST"
		,contentType : false
		,processData : false
		,caches : false // 선택사항
		,dataType : "JSON"
		,data : formData
		,success:function(res) {
			Swal.fire({
				title: '발송완료',
				text: '메시지 발송이 완료되었습니다.',
				icon: 'success',
			}).then(()=>{
				window.location.href = `${cPath}/message/list.do`;
			})
			console.log(res);
		}
	})
});