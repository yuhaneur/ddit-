/**
 * 
 */


const cPath = document.body.dataset.contextPath;
const userId = document.querySelector("#userId").value;
const classInfo = document.querySelector("#classInfo").value;

// 작성일지 폼 
let consultingJournalForm = document.querySelector("#consultingJournalForm");
// 작성일지 등록버튼
let insertConsultingJournal= document.querySelector("#insertConsultingJournal");
// 작성일지 디테일 모달
let journalDetailModal= document.querySelector("#journalDetailModal");
// 작성일지 디테일 폼 
let journalDetailForm = document.querySelector("#journalDetailForm");

// 작성일지 디테일 모달 닫기
function outJournalModal(){
    journalDetailModal.style.display= "none";
}
// 작성일지 내용 수정
function updateJournalModal(){
    let consultingJournalNo = journalDetailForm.consultingJournalNo.value;
    let consultingCn = journalDetailForm.consultingCn.value;
    console.log("consultingJournalNo",consultingJournalNo);
    console.log("consultingCn",consultingCn);
    let url = `${cPath}/school/consultingJournal`
    let data = {
        consultingJournalNo : consultingJournalNo,
        consultingCn : consultingCn
    }
    $.ajax({
        url:url,
        method:"put",
        data:JSON.stringify(data),
        dataType:"JSON",
        contentType:"application/json",
        success:function(resp){
            console.log("resp",resp);
            if(resp.result=="ok"){
				Swal.fire({
					title: '수정완료',
					text: '작성일지 수정이 완료되었습니다.',
					icon: 'success',
				}).then(()=>{
                	location.href=`${cPath}/school/consultingTeacher/${classInfo}`
				})
            }else{
				Swal.fire({
				 	title: '수정실패',
		   		    text: '작성일지 수정실패하셨습니다.',
		   		    icon: 'error'
		         })
            }
        }
    })
}
// 작성일지 디테일 모달 열기
function detailJournal(liTag){
    let consultingJournalNo = liTag.dataset.consultingJournalNo;
    let url = `${cPath}/school/consultingJournalDetail/${consultingJournalNo}`
    $.ajax({
        url:url,
        dataType:"json",
        success:function(resp){
            console.log("resp",resp);
            journalDetailForm.consultingCn.value = resp.consultingCn;
            journalDetailForm.consultingJournalNo.value= resp.consultingJournalNo;
            journalDetailModal.style.display= "block";
        }
    })
}

// 상담진행상태 업데이트
function updateConfmAt(consultingConfmAt){
    console.log("consultingConfmAt",consultingConfmAt);
    let consultingNo =event.target.dataset.consultingNo;
    console.log("consultingNo",consultingNo);
    let url = `${cPath}/school/consultingTeacher`
    let data = {
        consultingNo : consultingNo,
        consultingConfmAt: consultingConfmAt
    }
    $.ajax({
        url:url,
        data: JSON.stringify(data),
        dataType:"JSON",
        method:'put',
        contentType : "application/json",
        success: function(resp){
            console.log("resp",resp);
            if(resp.result=="ok"){
                location.href=`${cPath}/school/consultingTeacher/${classInfo}`
            }else{
                alert("실패!!");
            }
        }
    })
}
// 상담 완료 버튼 눌렀을때 상담일지 작성까지
function endConsulting(sBtn){
    let studentNameTag = consultingJournalForm.studentName;
    let consultingReqstCntntsTag = consultingJournalForm.consultingReqstCntnts;
    let consultingDeTag = consultingJournalForm.consultingDe;
    let consultingNoTag = consultingJournalForm.consultingNo;
    let consultingNo = sBtn.dataset.consultingNo;
    console.log("consultingNo",consultingNo);
    console.log("studentNameTag",studentNameTag);
    console.log("consultingReqstCntntsTag",consultingReqstCntntsTag);
    console.log("consultingDeTag",consultingDeTag);

	Swal.fire({
	  title: "상담완료 처리 하시겠습니까 ?",
	  text: "완료하시면 일지를 작성해주세요",
	  icon: "warning",
	  showCancelButton: true,
	  confirmButtonColor: "#3085d6",
	  cancelButtonColor: "#d33",
	  confirmButtonText: "완료!"
	}).then((result) => {
	  if (result.isConfirmed) {
	    Swal.fire({
	      title: "완료!",
	      text: "상담완료되었습니다.",
	      icon: "success"
	    }).then(()=>{
			let consultingNo = sBtn.dataset.consultingNo;
	        let url =`${cPath}/school/consultingJournal/${consultingNo}`;
	        $.ajax({
	            url : url,
	            dataType : "json",
	            success : function(consulting){
	                console.log("consulting",consulting.consultingVO);
	                studentNameTag.value=consulting.consultingVO.student.studentName;
	                consultingReqstCntntsTag.value=consulting.consultingVO.consultingReqstCntnts;
	                consultingDeTag.value = consulting.consultingVO.consultingDe;
	                consultingNoTag.value = consultingNo;
	            }
	        })
		});
	  }
	});
//    if(confirm("상담완료 처리 하시겠습니까 ? 완료하시면 일지를 작성해주세요")){
//        let consultingNo = sBtn.dataset.consultingNo;
//        let url =`${cPath}/school/consultingJournal/${consultingNo}`;
//        $.ajax({
//            url : url,
//            dataType : "json",
//            success : function(consulting){
//                console.log("consulting",consulting.consultingVO);
//                studentNameTag.value=consulting.consultingVO.student.studentName;
//                consultingReqstCntntsTag.value=consulting.consultingVO.consultingReqstCntnts;
//                consultingDeTag.value = consulting.consultingVO.consultingDe;
//                consultingNoTag.value = consultingNo;
//            }
//        })
//    }
}

// 상담일지 작성 등록 했을때
insertConsultingJournal.addEventListener("click",function(){
    let consultingCn = consultingJournalForm.consultingCn.value;
    let consultingNo = consultingJournalForm.consultingNo.value;
    let data= {
        consultingNo: consultingNo,
        consultingCn: consultingCn
    }
    let url = `${cPath}/school/consultingJournal`;
    $.ajax({
        url:url,
        data:JSON.stringify(data),
        method:"post",
        dataType:"json",
        contentType:"application/json",
        success : function(resp){
            console.log("resp",resp);
            if(resp.result=="ok"){
				console.log("classInfo",classInfo)
				Swal.fire({
					title: '작성완료',
					text: '상담일지작성이 완료되었습니다.',
					icon: 'success'
				}).then(()=>{
	                location.href=`${cPath}/school/consultingTeacher/${classInfo}`;
				})
			//alert("작성완료");
              //location.href=`${cPath}/school/consultingTeacher/${classInfo}`
            }else{
				Swal.fire({
				 	title: '작성실패',
		   		    text: '상담일지 작성 실패',
		   		    icon: 'error'
		         })
            }
        }

    })
})