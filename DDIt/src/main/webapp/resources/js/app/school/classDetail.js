/**
 * 
 */
let addClassTeacherModal = document.querySelector("#addClassTeacherModal");
let edcCrseCodeInputTag = document.querySelector("#edcCrseCode");
let classCodeInputTag = document.querySelector("#classCode");
let teacherTbody = document.querySelector("#table-contact-body");
let modalHead = document.querySelector("#modalHead");
let teacherInfoForm = document.querySelector("#teacherInfoForm");

let studentModalDiv = document.querySelector("#studentModal");
console.log("teacherTbody",teacherTbody);
const cPath = document.body.dataset.contextPath;

//클래스에 학생 추가할 모달창 띄우기
function studentModal(){
    studentModalDiv.style.display="block";
}
// 학생추가모달 닫기
function closeStudentModal(){
    studentModalDiv.style.display="none";
}
// 클래스에 학생 추가하기
function addStudent(){
    let studentIds = [];
    let checkBoxs = document.querySelectorAll(".form-check-input");
    let classCode = classCodeInputTag.value;
    console.log("checkBoxs",checkBoxs);
    checkBoxs.forEach(function(i,v){
        if(i.checked && !(i.id)){
          console.log("i",i);
          let tr = i.closest("tr");
          console.log("tr",tr);
          let studentId = tr.querySelector(".userId").value;
          console.log("studentId",studentId);
          studentIds.push(studentId);     
        }
    })
    let url = `${cPath}/school/studentInClass`;
    let data = {
        classCode : classCode,
        userId : studentIds
    }
    console.log("studentIds",studentIds);
    $.ajax({
        url:url,
        method : "put",
        data : JSON.stringify(data),
        dataType : "json",
        contentType : "application/json",
        success : function(resp){
            console.log("resp",resp);
            if(resp.result=="ok"){
                Swal.fire({
      			title: '등록완료',
           		   text: '학생등록이 완료되었습니다.',
           		   icon: 'success',
           		}).then(()=>{
                	location.href =`${cPath}/school/classDetail/${classCode}`
				})
            }else{
                Swal.fire({
      			title: '등록실패',
           		   text: '학생등록이 완료되었습니다.',
           		   icon: 'error'
           		})
            }
        }


    })
}



// 오전오후버튼 바뀌는 함수
function monOrAt(event){
    if(event.value == "오전"){
      event.value = "오후";
    }else{
      event.value="오전";
    }
console.log(event.value);
	return event.value;
  }
// 교과목 선생님 추가하는 모달창띄우기
function addClassTeacher(addBtn){
    let sjName = addBtn.dataset.sjName;
    modalHead.innerHTML=sjName;
    
    let sjNo = addBtn.dataset.sjNo;
    let edcCrseCode = edcCrseCodeInputTag.value;
    let url = `${cPath}/school/teachList`
    $.ajax({
        url:url,
        method:'get',
        data:{
            sjNo:sjNo,
            edcCrseCode:edcCrseCode
        },
        dataType:"JSON",
        success:function(resp){
            console.log("resp",resp);
            let teacher = resp.teachList;
            let txt = "";
            for(let i=0; i<teacher.length; i++){
                let tc = teacher[i].sjManagerList;
                console.log("tc",tc);
                for(let j=0; j <tc.length;j++){
					console.log("tc[j].teacher.userId",tc[j].teacher.userId);
					console.log("tc[j].teacher.teacherName",tc[j].teacher.teacherName);
					console.log("tc[j].teacher.sjNo",tc[j].teacher.sjNo);
					console.log("tc[j].teacher.teacherPhoneno",tc[j].teacher.teacherPhoneno);
					console.log("tc[j].teacher.teacherMail",tc[j].teacher.teacherMail);
                    txt += `
                    <tr>
                        <td class="align-middle fs-9 py-3">
                        <div class="form-radio mb-0">
                            <input class="form-radio-input" type="radio" name="userId" data-bulk-select-row="data-bulk-select-row">
                        </div>
                        </td>
                        <td class="align-middle name white-space-nowrap pe-5 ps-2">
                        <div class="d-flex align-items-center gap-2 position-relative">
                            <input type="hidden" class="userId" value=${tc[j].teacher.userId}>
                            <input type="hidden" class="sjNo" value=${tc[j].sjNo}>
                            <h6 class="teacherName mb-0">${tc[j].teacher.teacherName }</h6>
                        </div>
                        </td>
                        <td class="align-middle phone-number font-sans-serif white-space-nowrap">${tc[j].teacher.teacherPhoneno }</td>
                        <td class="align-middle report">${tc[j].teacher.teacherMail }</td>
                        <td class="align-middle subscription fs-9 text-end"><input class="btn btn-falcon-default btn-sm ms-2 mnOrAt" type="button" onclick="monOrAt(this)" value="오전"></input>
                        </td>
                    </tr>
                    `
            }
        }
		console.log("txt",txt);
        teacherTbody.innerHTML=txt;
		console.log("teacherTbody마지막",teacherTbody);
	
		addClassTeacherModal.style.display="block";
        }
    })
}
// 교과목 선생님 저장
function teachInsert(){
    let checkBoxs = document.querySelectorAll(".form-radio-input");
    let classCode= classCodeInputTag.value;
    let edcCrseCode = edcCrseCodeInputTag.value;
    let url = `${cPath}/school/teachInsert`;
	console.log("url",url);
    console.log("checkBoxs",checkBoxs);
    checkBoxs.forEach(function(i,v){
        if(i.checked==true && !(i.id)){
          let teacherInfo = findElement(i);
          console.log("teacherInfo",teacherInfo);
          let userId = teacherInfo[0];
          let sjNo = teacherInfo[1];
		  let ma = teacherInfo[2];
		  let mnOrAt = "M";
		  if(ma=="오후"){
			mnOrAt="F";
		  }
          teacherInfoForm.classCode.value = classCode;
          teacherInfoForm.sjNo.value = sjNo;
          teacherInfoForm.userId.value = userId;
          teacherInfoForm.edcCrseCode.value = edcCrseCode;
          teacherInfoForm.mnOrAt.value = mnOrAt;
		  teacherInfoForm.action = url;
          teacherInfoForm.submit();
        
        }
    })
}
// 요소 찾는 함수
function findElement(i){
  let tr = i.closest("tr");
      let userId = tr.querySelector(".userId");
      let sjNo = tr.querySelector(".sjNo");
	  let mnOrAt = tr.querySelector(".mnOrAt")
      let info = []
      info.push(userId.value);
      info.push(sjNo.value);
      info.push(mnOrAt.value);
      console.log("info",info);
      return info;
}
function outDetailModal(){
    addClassTeacherModal.style.display="none";
}

function outClassDetail(){
    location.href= `${cPath}/school/classList`
}