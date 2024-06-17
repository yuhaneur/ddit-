/**
 * 
 */

const cPath = document.body.dataset.contextPath;
const classCode = document.querySelector("#classCode").value;
const edcCrseCode = document.querySelector("#edcCrseCode").value;
const userId = document.querySelector("#userId").value;
// 수업목차 나오는곳
const curriList = document.querySelector("#curriList");
// 과목이름
const titleSj = document.querySelector("#titleSj");
// 파일 모달 
const fileModalForm = document.querySelector("#fileModal");

//첫화면 들어올떄 강제 클릭시켜서 첫번쨰 목록 보여줌
let btn = document.querySelector(".sjbtn1");
btn.click();

console.log(btn);
// 과목하나 클릭했을때
function sjCurriculum(sjBtn){
    let sjNo = sjBtn.dataset.sjNo;
    let url = `${cPath}/school/class/${edcCrseCode}/${sjNo}`
    titleSj.innerHTML= sjBtn.innerHTML;
    $.ajax({
        url:url,
        dataType:"json",
        success:function(resp){
            console.log("resp",resp);
            let text = "";
            resp.forEach(curri=>{
                if(curri.classCn==null){
                    curri.classCn="";
                }
                text+=`
                <div class="d-flex align-items-center px-x1 py-2 border-bottom border-200">
                    <div class="hoverbox me-3 my-1">
                        <a class="text-decoration-none" href="../../../assets/video/beach.mp4" data-gallery="attachment-bg">
                            <div class="bg-attachment bg-attachment-square">
                                <div class="bg-holder" style="background-image:url(../../../assets/img/elearning/lessons/chapter1.png);"></div>
                            </div>
                        </a>
                    <div class="hoverbox-content flex-center pe-none bg-holder overlay overlay-1 rounded">
                        <div class="position-relative fs-7 text-white" data-bs-theme="light"><svg class="svg-inline--fa fa-play-circle fa-w-16" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="play-circle" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M256 8C119 8 8 119 8 256s111 248 248 248 248-111 248-248S393 8 256 8zm115.7 272l-176 101c-15.8 8.8-35.7-2.5-35.7-21V152c0-18.4 19.8-29.8 35.7-21l176 107c16.4 9.2 16.4 32.9 0 42z"></path></svg><!-- <span class="fas fa-play-circle"></span> Font Awesome fontawesome.com --></div>
                    </div>
                    </div>
                    <div class="flex-1">
                    <h5 class="fs-9"><a class="text-decoration-none" href="../../../assets/video/beach.mp4" data-gallery="attachment-title">${curri.classTopic}</a>
                    </h5>
                    <p class="fs-10 mb-0">${curri.classCn}</p>
                    </div>

                    <div class="flex-2">
                    <svg xmlns="http://www.w3.org/2000/svg" style="margin-right: 20px;" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-clipboard text-900 fs-6"><path d="M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2"></path><rect x="8" y="2" width="8" height="4" rx="1" ry="1"></rect></svg>
                    <svg xmlns="http://www.w3.org/2000/svg" style="margin-right: 20px;" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-pen-tool text-900 fs-6"><path d="M12 19l7-7 3 3-7 7-3-3z"></path><path d="M18 13l-1.5-7.5L2 2l3.5 14.5L13 18l5-5z"></path><path d="M2 2l7.586 7.586"></path><circle cx="11" cy="11" r="2"></circle></svg>
                    <svg onclick="fileModal(this)" data-file-no="${curri.atchFileNo}" xmlns="http://www.w3.org/2000/svg" style="margin-right: 20px;" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-share text-900 fs-6"><path d="M4 12v8a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2v-8"></path><polyline points="16 6 12 2 8 6"></polyline><line x1="12" y1="2" x2="12" y2="15"></line></svg>
                    </div>
                </div>    
                `
            })
            curriList.innerHTML = text;
        }
    })
}

// 수업 파일에 관한 파일 모달 열기
function fileModal(file){
    let fileNo = file.dataset.fileNo;
    console.log("fileNo",fileNo);
    if(fileNo =="null"){
        Swal.fire({
		 	title: '파일없음',
   		    text: '파일이존재하지않습니다.',
   		    icon: 'error'
         })
    }else{
        $.ajax({
            url:`${cPath}/school/classSjFile/${fileNo}`,
            dataType:"json",
            success:function(resp){
                console.log("resp",resp);
                let text = `
                <div class="card mb-3" style="height: 96%;">
                    <div class="card-header">
                        <button class="btn btn-secondary" type="button" onclick="closefileModal()">닫기</button>
                    </div>
                    <div class="card-body bg-body-tertiary border-top">
                
                `;
                resp.forEach(file=>{
                    text+=`
                            <div class="row">
                                <div class="col-lg col-xxl-12">
                                    <div>
                                        <div>
                                        <a href="${cPath}/school/fileDownLord/${file.atchFileNo}/${file.atchFileTurn}">
                                            <img class="fileImg" alt="" src="${cPath}/resources/images/fileImg.jpg">
                                            <p class="fw-semi-bold mb-1">${file.fileName}</p>
                                        </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            `
                })
                text+=`
                        </div>
                </div>
                `
                fileModalForm.innerHTML=text;
                fileModalForm.style.display ="block";
            }
        })

    }
    
}
//파일 모달 닫기
function closefileModal(){
    fileModalForm.style.display ="none";
}
// 과제화면 (학생)가기
function assignmentStudentPage(){
	location.href=`${cPath}/school/assignment/${classCode}`
}
// 과제화면 (선생님)가기
function assignmentTeacherPage(){
	location.href=`${cPath}/school/assignmentTeacher/${classCode}`
}