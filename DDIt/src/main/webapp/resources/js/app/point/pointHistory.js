/**
 * 
 */
const cPath = document.body.dataset.contextPath;
let clNm = "";
	
/*포인트 이력 구분 선택 이벤트 */
document.querySelector('.hUl').addEventListener("click", function(event) {
	let hLi = document.querySelectorAll(".hLi");
	let targetHLi = event.target.closest('li');
    if (event.target.tagName === 'A' && event.target.classList.contains("hListA")) {
		for(let i=0; i<hLi.length; i++){
			hLi[i].style = "border-bottom: 5px solid #FFFFFF;"
		}
		targetHLi.style = "border-bottom: 5px solid #489CFF;"
        clNm = event.target.textContent;
		
        fPointHistory(clNm);
    }
});

/*포인트 이력 목록*/
function fPointHistory(clNm) {
    $.ajax({
        url: cPath+"/point/list",
        data: "clNm="+clNm,
        method: "GET",
        dataType: "json",
        success: function(historyList) {

		    let pHistoryTb = document.querySelector("#pHistoryTb");
		    let historyStr = "";
		
		    for (let i=0; i< historyList.length; i++) {
		        let history = historyList[i];
		        historyStr += `<tr class="align-middle">
		                          <td class="text-nowrap text-dark historyList1">${history.pointDt}</td>
		                          <td class="text-nowrap text-dark historyList2">${history.pointClNm}</td>
		                          <td class="text-nowrap text-dark historyList3">${history.point}</td>
		                      </tr>`;
		    }
		    pHistoryTb.innerHTML = historyStr;
		}
    });
}


const hLiMain = document.querySelector(".hLiMain");
console.log(hLiMain)

/*첫 실행*/
$(function() {
	hLiMain.style = "border-bottom: 5px solid #489CFF;"
	fPointHistory(clNm);
});	

