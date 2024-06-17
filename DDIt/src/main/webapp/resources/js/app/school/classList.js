/**
 * 
 */
const cPath = document.body.dataset.contextPath;

// 클래스등록 화면 이동
function insertClass(){
	location.href=`${cPath}/school/classInsert`;
}
function detailClass(pDiv){
	console.log(pDiv.dataset.classCode);
	let classCode = pDiv.dataset.classCode;
	location.href=`${cPath}/school/classDetail/${classCode}`;
}