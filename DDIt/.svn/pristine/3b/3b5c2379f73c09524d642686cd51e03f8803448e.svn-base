<a id="feedUpdateBtn" class="dropdown-item" onclick="feedUpdate(this, feedImgList)">수정</a>


function feedUpdate(btn, feedImgList) {
	// 1. 클릭된 버튼의 정보 가져오기
	var feedId = btn.dataset.feedId; // 버튼의 'data-feed-id' 속성 값 가져오기
	var feedImgContainer = btn.closest('.card-header').nextSibling; // 버튼이 속한 '.card-header' 요소의 다음 형제 요소 (feed_img들이 포함된 요소) 가져오기
  
	// 2. feed_img 요소들 가져오기
	var feedImgs = feedImgContainer.querySelectorAll('.feed_img');
  
	// 3. feedImgList 변수에 feed_img들의 경로 저장
	feedImgList.length = 0; // 기존 데이터 초기화
	for (var i = 0; i < feedImgs.length; i++) {
	  var feedImgUrl = feedImgs[i].src; // feed_img 요소의 'src' 속성 값 (이미지 경로) 가져오기
	  feedImgList.push(feedImgUrl); // feedImgList 변수에 경로 추가
	}
  
	// 4. 추가적인 처리 (선택사항)
	// - 다이어로그 띄우기, 폼에 값 채우기 등
  }


  /* ====================================================feedImgList 변수 사용========================================================================= */


  // ... (feedUpdate 함수에서 feedImgList 채우기) ...

// 다이어로그에서 feed_img 표시
var dialog = document.getElementById('feedImgDialog');
var dialogImgContainer = dialog.querySelector('.feed_img_container');

for (var i = 0; i < feedImgList.length; i++) {
  var imgElement = document.createElement('img');
  imgElement.src = feedImgList[i];
  dialogImgContainer.appendChild(imgElement);
}

// ... (feedUpdate 함수에서 feedImgList 채우기) ...

// 폼 컨트롤에 feed_img 경로 설정
var feedImgInput = document.getElementById('feedImgInput');
feedImgInput.value = feedImgList.join(','); // 배열 요소들을 ','로 구분하여 문자열로 변환