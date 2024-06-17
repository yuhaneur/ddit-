/**
 * 
 */
const userId = document.querySelector("#userId").value;
const cPath = document.body.dataset.contextPath;
let insertBtn= document.querySelector("#insertBtn");
let sulmoonInsertModal = document.querySelector("#sulmoonInsertModal");
let qustnrInsertBtn = document.querySelector("#qustnrInsertBtn");
let qustnrForm = document.querySelector("#qustnrForm");
let classCodeTag = document.querySelector("#classCode");
// 설문대상자 나오는 리스트 폼
let selectList = document.querySelector("#selectList");
// 설문대상자 닫기 버튼
let closeSelecter = document.querySelector("#closeSelecter");
// 설문대상자 모달
let selectModal = document.querySelector("#error-modal");
// 설문 대상자 리스트 나오는 tbody
let tbody = document.querySelector("#table-contact-body");
// 설문대상자 선택된 사람들 넣어줄 인풋태그
let users = document.querySelector("#users");
// 설문대상자 추가될 유저아이디값들
let userIds=[];
// 설문디테일 모달
let sulmoonDetailModal = document.querySelector("#sulmoonDetailModal");
// 설문디테일 모달 폼
let sulmoonDetailModalBody = document.querySelector("#sulmoonDetailModalBody");
// 설문 통계 모달 
let sulmoonStatisticsModal = document.querySelector("#sulmoonStatisticsModal");
// 설문통계 모달 정보창있는곳
let sulmoonInfo = document.querySelector("#sulmoonInfo");
// 설문통계 모달 설문내용있는곳
let sulmoonCn = document.querySelector("#sulmoonCn");

// 설문답변유형 처음부터 나오게하는 함수
surveyAnswer(document.querySelector("[name='answerType']"));

// 통계모달 닫기버튼
function closeStatisticsModal(){
	sulmoonStatisticsModal.style.display="none";
}

// 설문 통계버튼 눌렀을때
function openStatistics(statisticsBtn){
	let qustnrNo = statisticsBtn.dataset.qusNo;
	let classCode = classCodeTag.value;
	
	let url = `${cPath}/school/sulmoonStatistics/${qustnrNo}`

	let text = ""
	$.ajax({
		url:url,
		dataType:"json",
		success : function(resp){
			console.log("resp",resp);
			let sulmoon = resp.result;
			if(resp.result=="no"){
				Swal.fire({
				 	title: '미제출',
		   		    text: '설문을 제출하지않았습니다. 제출후 통계를 확인하세요!',
		   		    icon: 'error'
		         }).then(()=>{
					location.href=`${cPath}/school/sulmoon/${classCode}`
					})
			}else{
				text +=`
					<div class="card mb-3" >
					<div class="card-header">
						<button class="btn btn-secondary" type="button" onclick="closeStatisticsModal()">닫기</button>
					</div>
					<div class="card-body bg-body-tertiary border-top">
					<div class="row">
						<div class="col-lg col-xxl-4" id="sulmoonInfo">
						<div class="row">
							<div class="col-5 col-sm-4">
							<p class="fw-semi-bold mb-1">설문제목 :</p>
							</div>
							<div class="col">${sulmoon.qustnrSj}</div>
						</div>
						<div class="row">
							<div class="col-5 col-sm-4">
							<p class="fw-semi-bold mb-1">등록자</p>
							</div>
							<div class="col">황구</div>
						</div>
						<div class="row">
							<div class="col-5 col-sm-4">
							<p class="fw-semi-bold mb-1">설문시작일</p>
							</div>
							<div class="col">${sulmoon.qustnrCreatDt}</div>
						</div>
						<div class="row">
							<div class="col-5 col-sm-4">
							<p class="fw-semi-bold mb-1">설문마감일</p>
							</div>
							<div class="col">${sulmoon.qustnrEndDt}</div>
						</div>
						<div class="row">`
		 		for(var i = 0; i<sulmoon.questionsList.length;i++){
					text += `
						<div class="col-5 col-sm-4">
							<p class="fw-semi-bold mb-1">${i+1}.${sulmoon.questionsList[i].qustnrCn}</p>
						</div>`
				}
				text +=`
								</div>
							</div>
						</div>
					</div>
					<div class="card-footer border-top text-end">
					<div class="row">
					`
					for(var i = 0; i<sulmoon.questionsList.length;i++){
						text+=`
						<div class="col-sm-6 col-md-4 col-lg-3 mb-4">
						<canvas class="myChart" data-aa="${sulmoon.questionsList[i].qustnrQuestionsNo}" style="height:30vh; width:18vw;"></canvas>
						</div>
						`
					}
				text +=`
						</div>
					</div>
				</div>
				`
				sulmoonStatisticsModal.innerHTML = text;
				sulmoonStatisticsModal.style.display="block"; 
				
				
		
				// 차트 생성
				const statisticsList = resp.statisticsList;
				// 만들어진 캔버스들 다부름
            	const canvases = document.querySelectorAll(".myChart");
				// 캔버스들 반복문돌려서 하나씩 만들어줄거임
				canvases.forEach(function(canvas){
					// 만들어진 캔버스에 문제번호
					const questionNo = canvas.dataset.aa;
					const ctx = canvas.getContext('2d');
					let labels = [];
					let data = [];
					// 통계 리스트 가져온거만큼 반복문돌리고
					for(var i=0;i<statisticsList.length;i++){
						// 통계에있는 문제번호랑 캔버스태그에 있는 문제번호랑 같으면
						if(statisticsList[i].qustnrQuestionsNo == questionNo){
							// 라벨배열에 답변내용 집어넣고
							labels.push(statisticsList[i].questionnaireAnswer);
							//데이터에 카운트 넣어준다.
							data.push(statisticsList[i].count)
						}
					}
					// 캔버스에 들어갈 데이터들
					const chartData = {
						// ex)["매우그렇다","그렇다"....]
						labels:labels,
						datasets: [{
							label: `${questionNo}번 문제 응답 통계`,
							// 라벨에 맞게 데이터값이들어감
							data: data,
							// 데이터값에 맞는 색상들
							backgroundColor: ["#FF6384", "#36A2EB", "#FFCE56","green","black"],
							borderWidth: 1
						}]
					};

					
					new Chart(ctx, {
						// 동그라미 차트
						type: 'pie',
						// 차트에 설정할 데이터들
						data: chartData,
						options: {
							responsive: false, // 차트 크기 자동 조정
							title: {
								display: true,
								text: `${questionNo}번 문제 통계`
							}
						}
					});
				})// 반복문 끝나는곳
			}// else 끝나는곳
		}// success 끝나는곳
	})
}

// 설문 제출 버튼 눌렀을떄
function qustnrRspns(){
	let classCode = classCodeTag.value;
	let qusNo = sulmoonDetailModalBody.querySelector("#qusNo").value;
	let radios = sulmoonDetailModalBody.querySelectorAll('input[type="radio"]:checked');

	let userIdArr= [];
	let qustnrAnswerNoArr = [];
	let qustnrQuestionsNoArr = [];
	let qusNoArr = [];
	radios.forEach(radio=>{
		let qustnrAnswerNo = radio.value;
		let qustnrQuestionsNo = radio.name;
		qustnrAnswerNoArr.push(qustnrAnswerNo);
		qustnrQuestionsNoArr.push(qustnrQuestionsNo);
		userIdArr.push(userId);
		qusNoArr.push(qusNo);
	})
	let url = `${cPath}/school/sulmoonDetail`;
	let data = {
		userId : userIdArr,
		qustnrAnswerNo : qustnrAnswerNoArr,
		qustnrQuestionsNo : qustnrQuestionsNoArr,
		qustnrNo : qusNoArr
	}

	console.log("data",data);

	$.ajax({
		url : url,
		method : 'POST',
		data : data,
		dataType:"json",
		success : function(resp){
			console.log("resp",resp);
			if(resp.result=="ok"){
				Swal.fire({
					title: '제출완료',
					text: '설문제출이 완료되었습니다.',
					icon: 'success',
					}).then(()=>{
						location.href=`${cPath}/school/sulmoon/${classCode}`
					})
			}else{
				Swal.fire({
				 	title: '제출실패',
		   		    text: '설문제출 실패!!',
		   		    icon: 'error'
		         })
			}
		}

	})
	console.log("radios",radios);
}

// 설문 디테일 모달 열릴때
function sulmoonDetailModalOpen(qusNoDiv){
	let qusNo = qusNoDiv.dataset.qusNo;
	let classCode = classCodeTag.value;
	console.log("qusNo",qusNo);
	let text = "";
	$.ajax({
		url:`${cPath}/school/sulmoonDetail/${qusNo}`,
		dataType:"json",
		success:function(resp){
			console.log("resp",resp);
			if(resp.result=="no"){
				Swal.fire({
					title: '제출한 설문',
					text: '이미 제출한 설문입니다.',
					icon: 'success',
				}).then(()=>{
					location.href=`${cPath}/school/sulmoon/${classCode}`
				})
			}else{
				text += `
				<input type="hidden" id="qusNo" value="${qusNo}">
				<div class="card-header">
					<h4 class="text-center mb-0">${resp.result.qustnrSj}</h4>
				</div>
				<div class="card-body bg-body-tertiary">
				`
				for(var i=0;i<resp.result.questionsList.length;i++){
					text +=`
					<h6>${resp.result.questionsList[i].qustnrCn}</h6>
					`
					for(var j=0;j<resp.result.questionsList[i].qustnrAnswerTyList.length;j++){
						text += `
						<div class="form-check form-check-inline">
						<input class="form-check-input"  type="radio" name="${resp.result.questionsList[i].qustnrQuestionsNo}" value="${resp.result.questionsList[i].qustnrAnswerTyList[j].qustnrAnswerNo}" />
						<label class="form-check-label" >${resp.result.questionsList[i].qustnrAnswerTyList[j].questionnaireAnswer}</label>
						</div>`
					}
					text +=`
					<hr class="my-3">
					`
				}
				text += `
				</div>
				`
				sulmoonDetailModalBody.innerHTML=text;
				sulmoonDetailModal.style.display="block";
			}
		}

	})

	
}
// 설문디테일 모달 닫힐때
function closeDetailModal(){
	sulmoonDetailModalBody.reset();
	sulmoonDetailModal.style.display="none";
}
// 전체선택하는 함수
function selectAll(selectAll){
	let checkbox = document.querySelectorAll('input[type="checkbox"]');
	checkbox.forEach(checkbox=>{
		checkbox.checked = selectAll.checked;
	})
}

// 설문대상자 모달 닫기버튼눌렀을떄
selectModal.addEventListener('hidden.bs.modal', function () {
	// 선택된것들 다 취소
	selectList.reset();
	console.log("취소된후 값",userIds);
});

// 설문대상자 추가버튼 눌렀을떄
function addSelecter(){
	userIds=[];
	// 리스트 안에 name=userId 인 체크박스의 체크를 확인하고 
	let userCheckBoxs = tbody.querySelectorAll('input[name="userId"]');
	userCheckBoxs.forEach(checkbox=>{
		if(checkbox.checked){
			// 체크가 되있으면 그다음 형제요소의 벨류값을 가져온다.
			let userId = checkbox.nextElementSibling.value;
			// 벨류값을 배열에다 담아둔다.
			userIds.push(userId);
			console.log("userIds",userIds);
			console.log("userIds.length",userIds.length);
			
		}
		
	})
	for(var i=0;i<userIds.length;i++){
		let inputTag = document.createElement("input");
		inputTag.type="hidden";
		inputTag.name="users";
		inputTag.value=userIds[i];
		qustnrForm.appendChild(inputTag);
	}
	closeSelecter.click();
}

// 설문등록 모달창 보여주기
insertBtn.addEventListener("click",function(){
	sulmoonInsertModal.style.display="block";
})
// 설문등록 모달창 닫기
function cancelModal(){
	qustnrForm.reset();
	selectList.reset();
	sulmoonInsertModal.style.display="none";
}

// 설문 등록 버튼
qustnrInsertBtn.addEventListener("click",function(){
	console.log("userIds",userIds);
	if(userIds.length==0){
		Swal.fire({
		 	title: '설문대상자 미선택',
   		    text: '설문대상자를 선택해주세요.',
   		    icon: 'error'
         })
	}else{
		qustnrForm.submit();
	}
})



// 설문내용작성 폼
	let surveyContent = document.querySelector("#surveyContent");
	// 설문내용 추가 함수
	function addSurvey(){
		$.ajax({
			url : `${cPath}/school/codeGr`,
			dataType:"json",
			success: function(resp){
				let rowDiv = document.createElement('div');
				rowDiv.className= "row";
				let text = `
							<div class="col-6 mb-3">
								<h5>설문내용</h5>
								<input class="form-control" name="qustnrCn" type="text">
							</div>
							<div class="col-2">
							<h5>답변유형</h5>
								<select class="form-select" name="answerType" onchange="surveyAnswer(this)">
							`
						resp.forEach(function(i,v){
							text += `<option value="${i.qustnrAnswerCodeGr}">${i.qustnrAnswerCodeNm}</option>`
						})
						text += `
						</select>
							</div>
							<div class="col-2">
								<button class="btn btn-danger me-1 mb-1" type="button" style="margin-top:11% !important" onclick="delSurvey(this)">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-minus text-900 fs-6"><line x1="5" y1="12" x2="19" y2="12"></line></svg>
								</button>
						</div>
				`
				rowDiv.innerHTML = text;
				surveyContent.appendChild(rowDiv);
				surveyAnswer(rowDiv.querySelector("[name='answerType']"));
			}
			
		})
		
		
	}
	
	// 설문지 답변유형에 따른 선택지 보여주기
	function surveyAnswer(asnwerType){
		let atValue = asnwerType.value;
		let rowDiv = asnwerType.closest('.row');
		// 선택된 답변유형
		console.log("atValue",atValue);
		
		let surveyAnswerDiv = rowDiv.querySelector('.surveyAnswer');
	    if (!surveyAnswerDiv) {
	        surveyAnswerDiv = document.createElement('div');
	        surveyAnswerDiv.className = 'surveyAnswer col-12 mb-1 d-flex';
	        rowDiv.appendChild(surveyAnswerDiv);
	    }
	    $.ajax({
			url : `${cPath}/school/codeGr/${atValue}`,
			dataType:"json",
			success:function(resp){
			console.log("resp",resp);
			let txt="";
			if(resp.length==0){
				for(var i =0; i<5; i++){
					txt+=`
					<div style="margin-top:1%;">
					<span class="number" >${i+1}.</span>
					</div>
					<div class="form-check form-check-inline" style="padding-right:3%;">
					<input class="form-control"  type="hidden" name="qustnrAnswerOrdr" value="${i+1}" />
					<input class="form-control"  type="text" name="qustnrAnswerCn" value="" />
					</div>
					`
				}
			}else{
				resp.forEach(function(i,v){
					txt+=`
					<div style="margin-top:1%;">
					<span class="number" >${v+1}.</span>
					</div>
					<div class="form-check form-check-inline" style="padding-right:3%;">
					<input class="form-control"  type="hidden" name="qustnrAnswerCn" value="${i.qustnrAnswerCn}" />
						<div>${i.qustnrAnswerCn}</div>
					</div>
					`
				})
			}
				surveyAnswerDiv.innerHTML = txt;
			}
		})
		
	}
//<input class="form-control"  type="hidden" name="qustnrAnswerOrdr" value="${v+1}" />
//<input class="form-control"  type="text" name="qustnrAnswerCn" value="${i.qustnrAnswerCn}" />

	// 설문 내용 삭제 함수
	function delSurvey(delBtn){
		let parentDiv = delBtn.closest('.row');
		parentDiv.remove();
	}