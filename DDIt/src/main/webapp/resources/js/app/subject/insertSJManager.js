/**
 * 
 */
const cPath = document.body.dataset.contextPath;
let checkBoxs = document.querySelectorAll(".form-check-input");
let teacherList = document.querySelector("#teacherList");

let sjNo = document.querySelector("#sjNo");
let edcCrseCode = document.querySelector("#edcCrseCode");
let tId =[];
sjManagerList();
// 선생님 추가
function addTeacher(){

  checkBoxs.forEach(function(i,v){
    if(i.checked==true && !(i.id)){
     	let teacherId = findElement(i);
		tId.push(teacherId);
    }
  })
	let sjvo =	{
			sjNo:sjNo.value,
			edcCrseCode:edcCrseCode.value,
			userIds:tId
		}
	$.ajax({
		url:`${cPath}/subject/detail`,
		method:'POST',
    	contentType:"application/json",
		data:JSON.stringify(sjvo),
		dataType: "JSON",
		success:function(resp){
			if(resp.result=="ok"){
				Swal.fire({
					title: '등록완료',
					text: '선생님등록이 완료되었습니다.',
					icon: 'success',
				}).then(()=>{
					sjManagerList();
				})
			}else{
				Swal.fire({
				 	title: resp,
		   		    text: resp,
		   		    icon: 'error'
		         })
			}
		}
	})
}


// 요소 찾는 함수
function findElement(i){
  let tr = i.closest("tr");
      let teacherId = tr.querySelector(".teacherId");
	  
      return teacherId.value;
}
// 담당교사 리스트 보여주기
function sjManagerList(){
	$.ajax({
		url:`${cPath}/subject/sjManagerList`,
		method:'get',
		data:{
			sjNo:sjNo.value,
			edcCrseCode:edcCrseCode.value
			},
		dataType:"JSON",
		success:function(resp){
			let sjm = resp.result;
			let txt = "";
			for(let i=0; i<sjm.length; i++){
				txt+=`
				<div class="mb-3">
				  <input type="hidden" class="userId" value=${sjm[i].userId}>
              	  <span>${sjm[i].teacher.teacherName}</span>
                  <button class="btn btn-falcon-default btn-sm ms-2" type="button" onclick="delTeacherBtn(this)">삭제</button>
                </div>
				`
			}
			teacherList.innerHTML=txt;
		}
	})
}
// 교과목 담당교사 삭제
function delTeacherBtn(delBtn){
	let pDiv = delBtn.closest('div');
	let input = pDiv.querySelector('input');
	let teacherId = input.value;
	let data = {
		sjNo : sjNo.value,
		edcCrseCode: edcCrseCode.value,
		userId : teacherId
	}
	$.ajax({
		url:`${cPath}/subject/sjManagerdelete`,
		method:'delete',
		contentType:'application/json',
		data:JSON.stringify(data),
		dataType:"json",
		success:function(resp){
			if(resp.result=="ok"){
				Swal.fire({
					title: '삭제완료',
					text: '담당교사 삭제가 완료되었습니다.',
					icon: 'success',
				}).then(()=>{
					sjManagerList();
				})
			}else{
				Swal.fire({
				 	title: '삭제실패',
		   		    text: resp,
		   		    icon: 'error'
		         })
			}
		}

	})
}

// 페이지 나가기
function pageOut(){
	location.href=`${cPath}/subject/${edcCrseCode.value}`
}

