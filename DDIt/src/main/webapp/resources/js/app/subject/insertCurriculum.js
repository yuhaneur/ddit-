/**
 * 
 */
const insertModal = document.querySelector("#curriculumModal");
const detailModal = document.querySelector("#curriculumDetailModal");
const curriculumModalForm = document.querySelector("#curriculumModalForm");
// const curriculumDetailModalForm = document.querySelector("#curriculumDetailModalForm");
// console.log("curriculumDetailModalForm",curriculumDetailModalForm);
const curriculumDetailBody = document.querySelector("#curriculumDetailBody");
function insertCurriBtn(){
	insertModal.style.display="block";
}
function outInsertModal(){
    curriculumModalForm.reset();
    insertModal.style.display="none";
}


function submitCurriculum(){
    let curriculumForm = document.forms.curriculumForm;
    console.log("curriculumForm",curriculumForm);
    let url = `${cPath}/subject/curriculumInsert`;
    let method = curriculumForm.method;
    let data = new FormData(curriculumForm);
    console.log("data",data);
    $.ajax({
        url:url,
        method:method,
        data: data,
        dataType:"JSON",
		processData: false,
        contentType: false,
        success: function(resp){
			if(resp.result=="ok"){
	            console.log("resp : ",resp);
				Swal.fire({
					title: '등록완료',
					text: '수업내용 등록이 완료되었습니다.',
					icon: 'success',
				}).then(()=>{
					let sjNo = data.get("sjNo"); 
	                let edcCrseCode = data.get("edcCrseCode"); 
					console.log("sjNo",sjNo);
					console.log("edcCrseCode",edcCrseCode);
	                window.location.href = `${cPath}/subject/detail?sjNo=${sjNo}&edcCrseCode=${edcCrseCode}`;			
				})
			}else{
				Swal.fire({
				 	title: '등록실패',
		   		    text: '수업내용 등록실패.',
		   		    icon: 'error'
		         })
            }
        }
    })
}
// 커리큘럼 한건에대한 정보 보기
function curriculumDetailshow(trTag){
    let curriculumOrdr= trTag.dataset.curriculumOrdr;
    let edcCrseCode= trTag.dataset.edcCrseCode;
    let sjNo= trTag.dataset.sjNo;
    console.log("curriculumOrdr",curriculumOrdr);
    console.log("edcCrseCode",edcCrseCode);
    console.log("sjNo",sjNo);
    let url = `${cPath}/subject/curriculumDetail`;
    let data = {
        curriculumOrdr:curriculumOrdr,
        edcCrseCode:edcCrseCode,
        sjNo:sjNo
    }
    $.ajax({
        url:url,
        method:'get',
        data:data,
        dataType:'json',
        success:function(resp){
            console.log(resp)
            if(resp.classCn==null){
                resp.classCn="";
            }
            let txt ="";
            txt +=    `
            <div class="modal-body p-0">
                <form id="curriculumDetailModalForm">
                <div class="rounded-top-3 py-3 ps-4 pe-6 bg-body-tertiary">
                <label>주제:</label><input name="classTopic" value="${resp.classTopic}">
                </div>
                <div class="p-4 pb-0">
                    <input type="hidden" name="oldCurriculumOrdr" value="${resp.curriculumOrdr}">
                    <div class="mb-3">
                    <label class="col-form-label" >수업순서</label>
                    <input class="form-control" name="curriculumOrdr" type="text" value="${resp.curriculumOrdr}">
                    </div>
                    <div class="mb-3">
                    <label class="col-form-label" for="message-text">수업내용</label>
                    <textarea class="form-control" name="classCn" id="message-text">${resp.classCn}</textarea>
                    </div>
                </form>
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" onclick="outDetailModal()">나가기</button>
                <button class="btn btn-primary" type="button" onclick="updateCurriculum(this)">수정하기 </button>
                <button class="btn btn-danger" type="button" onclick="deleteCurriculum()">삭제하기 </button>
            </div>
            `
            curriculumDetailBody.innerHTML = txt;      
        }
    })
    detailModal.style.display="block";
}

// 수업 한건 수정
function updateCurriculum(uBtn){
    let curriculumDetailModalForm = document.querySelector("#curriculumDetailModalForm");
    
    let url = `${cPath}/subject/curriculumUpdate`;
    let method = "PUT"
    let data = {
        sjNo:sjNo.value,
        edcCrseCode:edcCrseCode.value,
        oldCurriculumOrdr:curriculumDetailModalForm.oldCurriculumOrdr.value,
        curriculumOrdr:curriculumDetailModalForm.curriculumOrdr.value,
        classTopic:curriculumDetailModalForm.classTopic.value,
        classCn:curriculumDetailModalForm.classCn.value
    }

    $.ajax({
        url:url,
        method:method,
        data:JSON.stringify(data),
        dataType:"JSON",
        contentType:"application/json",
        success:function(resp){
            if(resp.result=="ok"){
				Swal.fire({
					title: '수정완료',
					text: '수업내용 수정이 완료되었습니다.',
					icon: 'success',
				}).then(()=>{
	                window.location.href = `${cPath}/subject/detail?sjNo=${sjNo.value}&edcCrseCode=${edcCrseCode.value}`;
				})
            }else{
				Swal.fire({
				 	title: '수정실패',
		   		    text: '수업내용 수정을 실패하셨습니다.',
		   		    icon: 'error'
		         })
            }

        }


    })
}

// 수업 한건 삭제
function deleteCurriculum(){
    let curriculumDetailModalForm = document.querySelector("#curriculumDetailModalForm");
    let url = `${cPath}/subject/curriculumDelete`;
    let method = "DELETE"
    let data = {
        sjNo:sjNo.value,
        edcCrseCode:edcCrseCode.value,
        curriculumOrdr:curriculumDetailModalForm.curriculumOrdr.value,
    }
    $.ajax({
        url:url,
        method:method,
        data:JSON.stringify(data),
        dataType:"JSON",
        contentType:"application/json",
        success:function(resp){
            if(resp.result=="ok"){
				Swal.fire({
					title: '삭제완료',
					text: '수업내용 삭제가 완료되었습니다.',
					icon: 'success',
				}).then(()=>{
	                window.location.href = `${cPath}/subject/detail?sjNo=${sjNo.value}&edcCrseCode=${edcCrseCode.value}`;
				})
            }else{
				Swal.fire({
				 	title: '삭제실패',
		   		    text: '수업내용 삭제를 실패하셨습니다.',
		   		    icon: 'error'
		         })
            }

        }


    })
}

function outDetailModal(){
    detailModal.style.display="none";
}