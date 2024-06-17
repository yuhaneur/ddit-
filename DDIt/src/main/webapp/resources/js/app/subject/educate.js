/**
 * 
 */
const cPath = document.body.dataset.contextPath;
function insertBtn(){
   location.href = `${cPath}/educate/educateInsert`;
}
function detailEdc(trTag){
	let edcCode = trTag.dataset.edcCode;
	location.href=`${cPath}/subject/${edcCode}`
}