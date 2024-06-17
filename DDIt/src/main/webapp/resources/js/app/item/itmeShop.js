/**
 * 
 */
const itemV = document.querySelector("#itemV");
const cPath = document.body.dataset.contextPath;
const pointSpan = document.querySelector("#pointSpan");
/*사용가능 포인트 */
function myPoint(){
	$.ajax({
        url: cPath+"/item/point",
        method: "GET",
		dataType : "json",
        success: function(point) {
		pointSpan.innerText = point+"P"
		}
	});
}


/*아이템 카테고리 목록 */
function itemCmmnList(){
	let itemCmmnOption = document.querySelector("#itemCmmnOption");
	$.ajax({
		url : cPath+"/item/cmmnList",
		method : "GET",
		dataType : "json",
		success : function(cmmnList){
			let cmmnStr = "";
			cmmnStr += `<option value="0" selected>전체조회</option>`
			for (var i = 0; i < cmmnList.length; i++) {
			let cmmn = cmmnList[i];
			cmmnStr += `<option value="${cmmn.cmmnCode}">${cmmn.cmmnCodeName}</option>`
			}
			itemCmmnOption.innerHTML=cmmnStr;
		}
	});
}


const selectV = document.querySelector("#itemCmmnOption");
let selectCmmn = 0;

/*아이템 카테고리 선택 조회 */
selectV.addEventListener("change", (event) => {
	selectCmmn = event.target.value;
	
	itemList(selectCmmn);
});

/*아이템 목록*/
function itemList(selectCmmn){
	$.ajax({
        url: cPath+"/item/list",
		data:"ctgry="+selectCmmn,
        method: "GET",
		dataType : "json",
        success: function(itemList) {
				let itemStr = "";
				for (var i = 0; i < itemList.length; i++) {
					let item = itemList[i];
					let likeCode = "rgba(255, 0, 0, 1)"; // 빨간색
					if(item.itemLike.itemLikeCode==null){
						likeCode = "rgba(255, 255, 255, 1)";
					}
					let itemMyitem = "구매";
					let aStyle = "";
					if(item.itemMyitem=="Y"){
						itemMyitem = "보유";
						aStyle = "pointer-events:none;background-color:#C3C3C3;border-color:#C3C3C3;"
					}
					
					let itemCtgry1 = "";
					
					let itemCtgry2 = `<a class="d-block ${item.itemCode}" data-bs-toggle="modal" data-bs-target="#tooltippopovers" onclick="fitemOne(this)" data-item-code="${item.itemCode }">
										<img class="rounded-circle profileImg" src="/atch/MINJI2.jpg" alt="">
										</a>`;
										
					let itemCtgry3 = "";
					if(item.itemCtgry==1){
						itemCtgry1 = `${item.itemEffect}`;
					}
					if(item.itemCtgry==2){
						itemCtgry2 = `<div class="itemCtgry2-mo"><p>MouseOver</p></div>`;
						itemCtgry2 += `${item.itemEffect}`;
					}
					if(item.itemCtgry==3){
						itemCtgry3 = `${item.itemEffect}`;
					}
					
					
					itemStr += 
				     ` <div class="mb-7 col-md-6 col-lg-3">
				        <div class="border rounded-1 h-100 d-flex flex-column justify-content-between pb-4">
				          <div class="overflow-hidden">

				            <div class="position-relative rounded-top overflow-hidden">
								
								<div class="p-4 pb-4 pv">
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
								</div>
								
				            </div>

				            <div class="p-3">
				              <h5 class="fs-9">
					              <a  class="text-1100 ${item.itemCode}" data-bs-toggle="modal" data-bs-target="#tooltippopovers" onclick="fitemOne(this)"; data-item-code="${item.itemCode}" >
									${item.itemNm}
					              </a>
				              </h5>
				              <p class="fs-10 mb-1">
									${item.itemCmmn.cmmnCodeName}
				              </p>
				              <h5  class="fs-md-7 text-warning mb-0 d-flex align-items-center mb-3 ${item.itemCode}">
								${item.itemPc}P
				              </h5>
				            </div>
				          </div>
				
				          <div class="d-flex flex-between-center px-3">
				            <div class="itemEvent">
				                <a class="likeA" href="#!" aria-label="like" onclick="fLike(this)" data-item-code="${item.itemCode }">
					          		<svg width="20" height="20" viewBox="0 0 100 100" fill="none" xmlns="http://www.w3.org/2000/svg">
								    <path fill="${likeCode}" class="line-heart1 stroke1 fill1" d="M48.1819 24.4658L48.182 24.4659L48.1821 24.466L48.9727 25.5905L49.799 24.492L49.7991 24.4919L49.7991 24.4918L49.7997 24.491L49.8034 24.4862L49.8196 24.4649C49.8343 24.4455 49.857 24.416 49.8872 24.3769C49.9476 24.2987 50.0383 24.1823 50.1572 24.0329C50.3951 23.734 50.7454 23.3031 51.1909 22.7807C52.0829 21.7347 53.3518 20.3275 54.86 18.8802C57.9232 15.9409 61.7981 13.0105 65.4225 12.3757C69.9542 11.5819 76.7167 12.4021 81.9639 15.7348C85.9753 18.2826 88.5888 21.3569 90.2121 24.9598C91.8428 28.5792 92.5 32.79 92.5 37.6407C92.5 42.2838 90.2513 47.1467 87.5986 51.2345C84.9613 55.2986 82.012 58.4644 80.7929 59.6835C70.6643 69.8121 54.2708 83.3102 49.6249 87.0957C49.2611 87.3922 48.7576 87.3889 48.3971 87.0871C43.8546 83.2839 28.0406 69.8642 18.7372 59.7149C18.5919 59.5565 18.4481 59.3996 18.3056 59.2443C14.5991 55.2024 11.8255 52.1779 9.93661 49.016C8.0088 45.789 7 42.4056 7 37.6407C7 32.7889 7.65223 28.5697 9.28036 24.9464C10.9009 21.3401 13.5134 18.2672 17.5328 15.7369C23.6572 11.8815 28.5473 11.5353 33.3269 12.3756C36.8219 12.99 40.5051 15.9039 43.4103 18.848C44.8388 20.2956 46.0352 21.7045 46.8748 22.7522C47.2941 23.2755 47.6232 23.7071 47.8464 24.0065C47.958 24.1562 48.0431 24.2727 48.0997 24.351C48.128 24.3901 48.1491 24.4197 48.1629 24.439L48.1781 24.4603L48.1814 24.465L48.1819 24.4658Z" stroke="rgba(0,0,0,1)" stroke-width="2px" style="animation-duration: 2s;">
								    </path>
								    </svg>
									<span id="cntSpan">${item.likeCnt}</span>
					            </a>
					            <br>
					            <a style="${aStyle}" class="btn btn-sm btn-falcon-default" href="#!" aria-label="purchase" onclick="fBuy(this)" data-i-buy-code="${item.itemCode }">
									${itemMyitem}
					            </a>
					            <a class="btn btn-sm btn-falcon-default" data-bs-toggle="modal" onclick="fGift(this)" data-bs-target="#error-modal" aria-label="gift"  data-i-gift-code="${item.itemCode }">
									선물
					            </a>
				            </div>
				          </div>
				        </div>
				      </div>`
				itemV.innerHTML = itemStr;
			}
			
			
		 }
    });
}


/*아이템 미리보기 모달 정보*/
function fitemOne(element) {
	let itemCode = element.dataset.itemCode;
	let itemCtgry1Modal = document.querySelector("#itemCtgry1Modal");
	let itemCtgry2Modal = document.querySelector("#itemCtgry2Modal");
	let itemCtgry3Modal = document.querySelector("#itemCtgry3Modal");
	let tooltippopoversLabel = document.querySelector("#tooltippopoversLabel");
	
	$.ajax({
			url: cPath+"/item/one",
			data : "itemCode="+itemCode,
	        method: "GET",
			dataType : "json",
			success: function(itemOne) {
					let itemCtgry1 = "";
					let itemCtgry2 = `<img class="rounded-circle profileImg" src="/atch/MINJI2.jpg" alt="">`;
					let itemCtgry3 = "";
					let itemNm = itemOne.itemNm;
					if(itemOne.itemCtgry==1){
						itemCtgry1 = `${itemOne.itemEffect}`;
					}
					if(itemOne.itemCtgry==2){
						itemCtgry2 = `<div class="itemCtgry2-mo"><p>MouseOver</p></div>`;
						itemCtgry2 += `${itemOne.itemEffect}`;
						
					}
					if(itemOne.itemCtgry==3){
						itemCtgry3 = `${itemOne.itemEffect}`;
					}
						itemCtgry1Modal.style.cssText = itemCtgry1;
						itemCtgry2Modal.innerHTML = itemCtgry2;
						itemCtgry3Modal.innerHTML = itemCtgry3;
						tooltippopoversLabel.innerText = "아이템 : "+itemNm;
			}
	});

};



/*아이템 좋아요 등록, 취소*/
function fLike(element){
	let itemCode = element.dataset.itemCode;
	 $.ajax({
		url: cPath+"/item/like",
		data : "itemCode="+itemCode,
        method: "POST",
        success: function() {
			let pathElement = element.querySelector(".line-heart1");
			let cntSpan = element.querySelector("#cntSpan")
			if(pathElement.getAttribute("fill") == "rgba(255, 0, 0, 1)"){
				pathElement.setAttribute("fill","rgba(255, 255, 255, 1)");
				cntSpan.innerText = parseInt(cntSpan.innerText)-1;
			}else{
				pathElement.setAttribute("fill","rgba(255, 0, 0, 1)");
				cntSpan.innerText = parseInt(cntSpan.innerText)+1;
			}
		},
		error : function(){alert("error")}
    });
};	


/*아이템 구매*/
function fBuy(element){
	let iBuyCode = element.dataset.iBuyCode;
	 $.ajax({
		url: cPath+"/item/purchase",
		data : "itemCode="+iBuyCode,
        method: "POST",
		success: function(data) {
			if(data=="success"){
				Swal.fire({
					title: '구매 성공!',
					text: '아이템 구매에 성공했습니다.',
					icon: 'success',
				}).then(()=>{
					element.style="pointer-events:none;background-color:#C3C3C3;border-color:#C3C3C3;"
					element.innerText ="보유";
				})
//				swal("구매 성공!", `아이템 구매에 성공했습니다.`, "success");
			}else{
				swal ( "구매 실패" ,  "아이템 구매에 실패했습니다." ,  "error" )
				Swal.fire({
				 	title: '구매 실패',
		   		    text: '아이템 구매에 실패했습니다.',
		   		    icon: 'error'
		         })
			}
			myPoint();
		}, error :function(){
			swal("error");
		} 
    });
};	

/*선택아이디 출력 기능*/
function fCopy(element){
	document.querySelector("#addrse").value = element.innerText;
};


/*아이템 선물 정보입력 모달*/
function fGift(element){
	let iGiftCode = element.dataset.iGiftCode;
	let itemInfo = document.querySelectorAll("."+iGiftCode);
	let itemName = itemInfo[0].innerText;
	let itemPc = itemInfo[1].innerText;
	document.querySelector("#pItemName").innerText = itemName;
	document.querySelector("#pItemPc").innerText = itemPc;
	document.querySelector("#sendBtn").dataset.gItemCode = iGiftCode;
	
	giftFollow(iGiftCode);
};

/*선물 받을 친구목록 */
function giftFollow(iGiftCode){
	let giftFollowDiv = document.querySelector("#giftFollowDiv");
	$.ajax({
			url: cPath+"/item/giftFollow",
			data : "itemCode="+iGiftCode,
	        method: "GET",
			dataType : "json",
			success: function(giftFollowList) {
				let followStr = "";
					followStr +=`<table class="table table-bordered">
									<thead class="table table-dark">
										<tr>
											<th scope="col">아이디</th>
											<th scope="col">이름</th>
										</tr>
									</thead>
									<tbody>
									`
									if(giftFollowList.length>0){
										for (var i = 0; i < giftFollowList.length; i++) {
											let follow = giftFollowList[i];
										followStr +=`
													<tr>
														<td><a href="javascript:;" onclick="fCopy(this);">${follow.userId}</a></td>
														<td>${follow.userNm}</td>
													</tr>
													`
										}
									}else{
										followStr +=`
													<tr>
														<td colspan="2">선물받기 가능한 사용자가 없습니다.</td>
													</tr>
													`
									}
					followStr +=
								`</tbody>
								</table>`
				giftFollowDiv.innerHTML = followStr
			},
			error :function(){
				swal("error");
			} 
	   	});
};


/*아이템 선물 보내기*/
function fSend(element){
	let input = document.querySelector("#addrse");
	let iGiftCode = element.dataset.gItemCode;
	let addrse = input.value;
	if(!addrse){
		swal ( "선물실패" ,  "아이디를 선택해 주세요" ,  "error" )
		return;
	}
	 $.ajax({
		url: cPath+"/item/gift",
		data : {itemCode : iGiftCode,
				addrseUserId : addrse},
        method: "POST",
		success: function(data) {
			if(data=="success"){
//				swal("선물 성공!", "아이템 선물에 성공했습니다.", "success");
				Swal.fire({
					title: '선물 성공!',
					text: '아이템 선물에 성공했습니다.',
					icon: 'success',
				})	
			}else{
//				swal ( "선물 실패" ,  "아이템 선물에 실패했습니다." , "error" )
				Swal.fire({
				 	title: '선물 실패',
		   		    text: '아이템 선물에 실패했습니다.',
		   		    icon: 'error'
		         })
			}
			myPoint();
			giftFollow(iGiftCode);
			input.value="";
		}, error :function(){
			swal("error");
		} 
    });
	
};




/*첫 실행*/
$(function() {
	myPoint();
	itemCmmnList();
	itemList(selectCmmn);
});				
			
			
			
/*swal("Good job!", "You clicked the button!", "success");
swal ( "Oops" ,  "Something went wrong!" ,  "error" )*/
			
