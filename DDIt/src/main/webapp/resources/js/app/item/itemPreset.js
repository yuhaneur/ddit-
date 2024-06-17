/**
 * 
 */
const cPath = document.body.dataset.contextPath;
let hide;
let ctgry = 1;

/*카테고리별 보유 아이템 목록*/
function itemStorage(hide, ctgry){
	let ctgryDiv = document.querySelector(`#ctgry${ctgry}`)
	$.ajax({
		url: cPath+"/preset/Storage",
		data: {hide: hide,
				ctgry: ctgry},
		method: "GET",
		dataType: "json",
		success: function(storageList){
			let storageStr = "";
			for(let i = 0; i<storageList.length; i++){
				let storage = storageList[i];
				
				let bkmkCode = "#FFFFFF"; // 흰색
					if(storage.itemBkmk=="Y"){
						bkmkCode = "#EDD200";  //노란색
					}
				storageStr += `
							<ul class="list-unstyled mb-0">
								<li class="d-flex align-items-center fs-11 fw-medium pt-1 mb-3">
									<a href="#!" class="me-3" onclick="fItemBkmk(this)" data-bkmk-item-code="${storage.item.itemCode}">
									<svg id="Layer_1" enable-background="new 0 0 512 512" height="20" viewBox="0 0 511.992 511.992" width="20" xmlns="http://www.w3.org/2000/svg">
									<g><g><g>
									<path fill="${bkmkCode}" id="bkmkPath" d="m476.127 188.015-139.453-20.266-62.365-126.364c-10.074-20.413-26.557-20.413-36.63 0l-62.363 126.364-139.457 20.266c-22.526 3.272-27.62 18.95-11.32 34.838l100.909 98.361-23.822 138.891c-3.847 22.436 9.488 32.126 29.635 21.531l124.732-65.575 124.733 65.575c20.147 10.595 33.484.904 29.637-21.531l-23.826-138.891 100.91-98.361c16.301-15.888 11.206-31.566-11.32-34.838z"/></g></g>
									<path d="m510.616 196.062c-3.944-12.14-15.729-20.486-32.329-22.897l-131.649-19.132-58.875-119.293c-7.424-15.045-19.003-23.672-31.767-23.672s-24.343 8.628-31.766 23.672l-58.873 119.292-131.651 19.132c-16.602 2.411-28.385 10.757-32.33 22.896-3.944 12.14.684 25.818 12.695 37.526l95.263 92.856-22.489 131.121c-2.957 17.247 2.065 27.561 6.8 33.176 5.538 6.568 13.617 10.186 22.749 10.186 6.904 0 14.257-2.025 21.85-6.018l117.752-61.907 117.752 61.905c7.595 3.993 14.946 6.019 21.853 6.019h.001c9.133 0 17.212-3.617 22.75-10.186 4.734-5.615 9.757-15.929 6.799-33.177l-22.493-131.118 95.263-92.855c12.012-11.709 16.64-25.387 12.695-37.526zm-33.636 16.042-100.91 98.361c-3.536 3.446-5.149 8.411-4.314 13.277l23.826 138.89c.767 4.473.378 7.155.016 8.291-.905 0-3.479-.254-7.888-2.572l-124.733-65.574c-2.186-1.149-4.583-1.724-6.98-1.724s-4.796.574-6.979 1.724l-124.735 65.576c-4.404 2.315-6.977 2.57-7.883 2.57-.363-1.136-.753-3.818.015-8.291l23.822-138.891c.834-4.865-.779-9.83-4.314-13.276l-100.911-98.361c-3.255-3.172-4.515-5.572-4.887-6.701.965-.695 3.396-1.896 7.895-2.551l139.456-20.266c4.886-.709 9.108-3.778 11.294-8.205l62.364-126.365c2.01-4.074 3.902-6.016 4.862-6.719.96.703 2.854 2.645 4.864 6.72l62.365 126.364c2.186 4.427 6.408 7.496 11.294 8.205l139.454 20.266c4.498.654 6.929 1.855 7.894 2.551-.372 1.128-1.633 3.529-4.887 6.701z"/>
									</g>
									</svg>
									</a>
									
									<a href="#!" class="me-3" id="${ctgry}" onclick="fPresetDetailUp(this)"; data-item-code="${storage.item.itemCode }">
									<p class="lh-sm mb-0 text-900" style="font-size:20px;">${storage.item.itemNm}</p>
									</a>
								</li>
					
							</ul>`
							
			}
					ctgryDiv.innerHTML = storageStr;
		}
		
	});
};


/*프리셋 목록 */
function itemPresetList(){
	let presetDiv = document.querySelector("#presetDiv");
	$.ajax({
		url: cPath+"/preset/presetList",
		method: "GET",
		dataType: "json",
		success: function(itemPresetList){
			let presetStr = "";
			let iPresetdelCode = "";
			presetStr += `<div class="col-md-auto">`
			for(let i=0; i<itemPresetList.length; i++){
				let preset = itemPresetList[i];
				let presetY = "btn btn-outline-danger me-1 mb-0 btn-sm"; 
				let presetYid = "";
					if(preset.itemPresetApplc=="Y"){ // Y선택
						presetY = "btn btn-danger me-1 mb-0 btn-sm";
						iPresetdelCode = preset.itemPresetCode;
					}
				presetStr += `<button class="${presetY}" onclick="fitemPreset(this)"; data-i-preset-code-y="${preset.itemPresetCode}"; type="button">${preset.itemPresetNm}</button>`
			}
				presetStr +=`</div>
							<div class="col-md-auto">
								<button class="btn btn-outline-dark me-1 mb-1 btn-sm" type="button" onclick="fPresetDetailDel(this)"; data-item-preset-code="${iPresetdelCode}";>초기화</button>
							</div>`
			presetDiv.innerHTML = presetStr;
		}
	});
}

/*프리셋 디테일 아이템 등록 */
function fPresetDetailUp(element){
	let itemCode = element.dataset.itemCode;
	let detailNo = element.id;
	 $.ajax({
		url: cPath+"/preset/presetDetailUp",
		data : {itemCode:itemCode,
				detailNo:detailNo},
        method: "POST",
        success: function() {
			itemPresetDetail();
		}
	});
}

/*프리셋 디테일 아이템 삭제 */
function fPresetDetailDelOne(element){
	let itemCode = element.id;
	let presetCode = element.dataset.itemPresetCode;
	let delOne = element.parentNode;
	$.ajax({
		url: cPath+"/preset/presetDetailDelOne",
		data : {presetCode:presetCode,
				itemCode:itemCode},
        method: "POST",
        success: function() {
			delOne.innerHTML = "";
			itemPresetDetail();
		}
	})
}

/*프리셋 디테일 아이템 전체삭제*/
function fPresetDetailDel(element){
	let presetCode = element.dataset.itemPresetCode;
	let pDetail = document.querySelectorAll(".pDetail");
	$.ajax({
		url: cPath+"/preset/presetDetailDel",
		data : "presetCode="+presetCode,
        method: "POST",
        success: function() {
			for(idx in pDetail) {
				pDetail[idx].innerHTML = "";
			}
			itemPresetDetail();
		}
	})
}


/*프리셋 디테일 목록 */
function itemPresetDetail(){
	$.ajax({
		url: cPath+"/preset/presetDetail",
		method: "GET",
		dataType: "json",
		success: function(itemPresetDetailList){
			let presetDetailList = "";
			let presetDetailStr = "";
			if(itemPresetDetailList[0].item!=null){
				for(let i=0; i<itemPresetDetailList.length; i++){
					let presetDetail = itemPresetDetailList[i];
					presetDetailList = document.querySelector(`#presetC${presetDetail.item.itemCtgry}`)
					presetDetailStr =
							`<div class="mb-3 clearfix">
								<div class="btn-close-falcon float-end" id="${presetDetail.item.itemCode}" onclick="fPresetDetailDelOne(this)"; data-item-preset-code="${presetDetail.itemPresetCode}";></div>
								<img class="img-fluid rounded-circle mb-2 shadow-sm"
									src="/atch/${presetDetail.item.itemImge}" alt="" width="100%"> 
								<h6 class="mb-2">
									${presetDetail.item.itemNm}
								</h6>
							</div>`
					presetDetailList.innerHTML = presetDetailStr;
				}
			}
			itemPresetDetailOn(itemPresetDetailList);
		}
	});
}

/*프리셋 디테일 목록 적용이미지 */
function itemPresetDetailOn(itemPresetDetailList){
	let profileImg = itemPresetDetailList[0].gafile.streFileName;
	let profileName = itemPresetDetailList[0].userName;
	console.log(profileName)
	
	let presetDetailOnStr = "";
	let itemOn = document.querySelector("#itemOn");
	
	let itemCtgry1 = "";
	let itemCtgry2 = `<img class="rounded-circle profileImg" src="" alt="">`;
	let itemCtgry3 = "";
		if(itemPresetDetailList[0].item!=null){	
			for(let i=0; i<itemPresetDetailList.length; i++){
				let presetDetail = itemPresetDetailList[i];
					
					if(presetDetail.item.itemCtgry==1){
						itemCtgry1 = `${presetDetail.item.itemEffect}`;
					}
					if(presetDetail.item.itemCtgry==2){
						itemCtgry2 = `${presetDetail.item.itemEffect}`;
					}
					if(presetDetail.item.itemCtgry==3){
						itemCtgry3 = `${presetDetail.item.itemEffect}`;
					}
			}
		}
		presetDetailOnStr =
				`<div class="p-1 pb-1 pv">
					<div class="itemDiv">
						<div class="itemImgDiv">
							<div class="itemCtgry1Div" style="${itemCtgry1}" >
							</div>
						
							<div class="itemCtgry2Div">
								${itemCtgry2}
							</div>
							
							<div class="itemCtgry3Div" class="dynamic-div">
								${itemCtgry3}
							</div>
						</div>
					</div>
				</div>`
				
		itemOn.innerHTML = presetDetailOnStr;
		
		/* 이미지태그 찾아서 src 설정 */
		const imgElement = itemOn.querySelector(".itemCtgry2Div img");
		if (imgElement) {
		        imgElement.src = '/atch/'+profileImg; // 사용자 이미지
		}
		
		/* p태그 찾아서 이미지에 이름 출력 설정 */
		const itemCtgry2p = itemOn.querySelector(".itemCtgry2Div p");
		if(itemCtgry2p!=null){
			itemCtgry2p.innerText = profileName;
		}
		
		/*a태그 이벤트 삭제 */
		const aTagElement = itemOn.querySelector(".itemCtgry2Div a");
		if(aTagElement==null){
			return
		}else{
			aTagElement.onclick = null;
			aTagElement.removeAttribute("data-bs-toggle");
			aTagElement.removeAttribute("data-bs-target");
		};
		
	
}


/*프리셋 선택 */
function fitemPreset(element){
	let presetCode = element.dataset.iPresetCodeY;
	let pDetail = document.querySelectorAll(".pDetail");
	$.ajax({
		url: cPath+"/preset/presetY",
		data:"presetCode="+presetCode,
		method:"POST",
		success: function(){
			for(idx in pDetail) {
				pDetail[idx].innerHTML = "";
			}
			itemPresetDetail();
			itemPresetList();
		}
	});
}


/*아이템 즐겨찾기 등록 */
function fItemBkmk(element){
	let BkmkItemCode = element.dataset.bkmkItemCode;
	 $.ajax({
		url: cPath+"/preset/bkmk",
		data : "itemCode="+BkmkItemCode,
        method: "POST",
        success: function() {
			let pathElement = element.querySelector("#bkmkPath");

			if(pathElement.getAttribute("fill") == "#FFFFFF"){
				pathElement.setAttribute("fill","#EDD200"); //노란색
			}else{
				pathElement.setAttribute("fill","#FFFFFF");
			}
		}
	});
}





/*프리셋 디테일 아이템 등록 랜덤 */
document.querySelectorAll(".randomBtn").forEach(function(event) {
    event.addEventListener("click", function(e) {
        e.preventDefault();
		let detailNo = (e.target.id).slice(6);
		$.ajax({
			url: cPath+"/preset/presetDetailRandomUp",
			data : "detailNo="+detailNo,
	        method: "POST",
	        success: function() {
				console.log(detailNo);
			itemPresetDetail();	
							
			}
		});
		
    });
});





let ctgrySize = document.querySelector("#ctgrySize").value;
/*첫 실행*/
$(function() {
	for(let i=1; i<=ctgrySize; i++){
		itemStorage(hide, i);
	}
	itemPresetList();
	itemPresetDetail();
});	

