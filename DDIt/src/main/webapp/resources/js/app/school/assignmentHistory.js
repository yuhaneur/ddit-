/**
 * 
 */
const cPath = document.body.dataset.contextPath;
const userId = document.querySelector("#userId").value;
const classCode = document.querySelector("#classCode").value;

// 과제등록모달
let assignmentInsertModal = document.querySelector("#assignmentInsertModal");
// 과제등록버튼
let insertAssignmentBtnTag = document.querySelector("#insertAssignmentBtn");
// 과제 등록 폼
let assignmentInsertForm = document.querySelector("#assignmentInsertForm");
// 과제등록 취소 버튼
let outModalBtn = document.querySelector("#outModalBtn");

// 과제 작성 모달창버튼
function insertAssignmentBtn(){
    assignmentInsertModal.style.display="block";
}

// 과제 작성모달 나가기버튼
outModalBtn.addEventListener("click",function(){
    assignmentInsertForm.reset();
    assignmentInsertModal.style.display="none";
})

// 과제입력후 등록버튼눌렀을떄
insertAssignmentBtnTag.addEventListener("click",function(){
    let formData = new FormData(assignmentInsertForm);
	console.log("formData",formData);
    formData.append("userId",userId);
    formData.append("classCode",classCode);
    let url = `${cPath}/school/assignment`;
    $.ajax({
        url: url,
        data: formData,
        dataType: "json",
        method : "post",
        contentType:false,
        processData: false,
        success : function(resp){
            if(resp.result=="ok"){
				Swal.fire({
      			title: '등록완료',
           		   text: '과제등록이 완료되었습니다.',
           		   icon: 'success',
           		}).then(()=>{
					location.href=`${cPath}/school/assignmentTeacher/${classCode}`
				})
//				alert("과제등록완료!")
//				location.href=`${cPath}/school/assignmentTeacher/${classCode}`
			}
        }
    })
})


let accordions = document.querySelectorAll(".accordion");
document.addEventListener("show.bs.collapse",function(event){
    console.log("event.target",event.target);
    let assignmentCode = event.target.dataset.assignmentCode;
    let body = event.target.querySelector(".accordion-body");
    console.log("body",body);
    let url =`${cPath}/school/assignmentDetail/${assignmentCode}`;
    $.ajax({
        url:url,
        dataType:"json",
        success:function(resp){
            console.log("resp",resp);
            let text ="";
            text+=`<div class="row" style="width:70%;">`
            resp.assignmentVO.atchList.forEach(file=>{
                let fileType = file.fileTy.toUpperCase();
                let fileTypes = fileType.split("/");
                text+=`
                <div jscontroller="yP6Lwf" jsaction="rcuQ6b:rcuQ6b;URgETb:rcuQ6b;uwjiC:rcuQ6b;ZQcBrc:rcuQ6b;wuANJc:.CLIENT;nK3Vsc:.CLIENT" class="sVNOQ" jsmodel="PTCFbe hGbFme BrMJ0e" data-is-edit-mode="false" data-filter="0" data-material-parent-id="PTCFbe" data-include-stream-item-materials="true">
                    <div class="AgzMgb hjqfGd" jsname="UYewLd" style="">
                        <div class="MlZb9c xLFtvb" jscontroller="ze9NU" jsaction="rcuQ6b:rcuQ6b;uwjiC:rcuQ6b;KtPeHe:rcuQ6b;IKzbTb:rcuQ6b;wuANJc:.CLIENT" jsname="C2Qrw" data-parent-id="PTCFbe" data-mode="7" data-exclude-cover-photo="false" data-copies-only="false" data-link-destination="1" data-show-originality-analyses="false" data-show-cover-photo-settings="false" data-forms-only="false" data-read-only="false">
                            <div class="t2wIBc" jsaction="click:LWntbc(HrdP0);error:dyBsCf(q4uQmd);JIbuQc:Rsbfue(Rsbfue);h4C2te:MvKmtd" data-attachment-id="648027161290">
                                <div class="r0VQac QRiHXd Aopndd ">
                                <a class="vwNuXe JkIgWb QRiHXd MymH0d maXJsd Fh209b" target="_blank" aria-label="첨부: ${fileTypes[1]}: ${file.fileName}" jsname="HrdP0" href="${cPath}/school/fileView/${file.atchFileNo}/${file.atchFileTurn}" title="${file.fileName}" data-focus-id="hSRGPd-648027161290">
                                        <div class="bxp7vf bHOAdb Niache">
                                        <img class="fileImg" alt="" src="${cPath}/resources/images/fileImg.jpg">
                                        </div>
                                        <div class="MM30Lb">
                                            <div class="A6dC2c QDKOcc OGhwGf VBEdtc-Wvd9Cc zZN2Lb-Wvd9Cc Fh209b">${file.fileName}</div>
                                            <div class="cSyPgb WInaFd QRiHXd">
                                                <div class="QRiHXd">
                                                    <div class="kRYv9b YVvGBb">${fileTypes[1]}</div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    <div class="ZgfM9 QRiHXd"></div>
                                </div>
                            </div>
                        </div>
                        <div class="MlZb9c xLFtvb" jscontroller="Z2vwzc" jsaction="rcuQ6b:rcuQ6b;uwjiC:rcuQ6b;wuANJc:rcuQ6b;voP7ud:rcuQ6b;nK3Vsc:hVCa3c;n7J2fb:GDCStd;IKzbTb:rcuQ6b;YCR7Tc:STeVHc;" jsname="C2Qrw" data-mode="7" data-material-parent-id="PTCFbe"></div>
                    </div>
                    <div class="style-PbD9X" jsname="QkPyvd" id="style-PbD9X"></div>
                </div>`
            })
            text+= `
            </div>
            <div style="width:30%;">
            <h5>제출자</h5>`
            resp.aphList.forEach(aph=>{
				let apcn = aph.assignmentPresentnCn;
				if(apcn==null){
					apcn = " ";
				}
				console.log("aph",aph);
	                text+=`
	                <strong>${aph.student.studentName} : ${apcn} </strong>
	                `
                aph.atchList.forEach(file=>{
                    console.log("file",file);
                    text+=`
                    <a href=${cPath}/school/fileDownLord/${file.atchFileNo}/${file.atchFileTurn}>${file.fileName}</a>
                    `
                })
                text+=`
                <br>
                `
            })
            text +=`
			</div>
            `
            body.innerHTML=text;
        }
    })
    
})