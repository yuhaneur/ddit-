<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
.likeA:hover .line-heart1 {
	animation: line-heart1-pulse 2s infinite;
}

@keyframes line-heart1-pulse { 
	0% {transform: scale3d(1, 1, 1);}
	20% {transform : scale3d(0.9, 0.9, 0.9);}
	35% {transform : scale3d(1, 1, 1);}
	50% {transform : scale3d(0.9, 0.9, 0.9);}
	75% {transform : scale3d(1, 1, 1);}
	100% {transform : scale3d(1, 1, 1);}
}

.itemEvent a {
	font-size: 12px;
	font-weight: bolder;
	margin-top: 20px;
}


#pointMainDiv{
	position: fixed; 
	z-index: 100; 
	top: 10; 
	width: 80%;
}
#itemMainDiv{
	padding-top: 4.5rem;
}




</style>

<div class="card mb-1" id="pointMainDiv">
	<div class="card-body">
		<div class="row flex-between-center">

			<!-- 보유포인트 출력 시작 -->
			<div class="col-sm-auto mb-2 mb-sm-0">
				<h4 class="mb-0">
					<svg fill="none" height="40" viewBox="0 0 512 512" width="40"
						xmlns="http://www.w3.org/2000/svg">
	    			<path clip-rule="evenodd"
							d="m455.778 248.317 7.684 7.684c27.441 25.247 28.539 68.056 3.293 95.498l-103.182 109.767c-25.246 27.442-68.056 28.54-95.498 3.293l-7.683-7.684-7.684 7.684c-25.246 27.442-68.056 28.54-95.498 3.293l-109.7671-103.181c-27.4418-25.247-28.5395-68.056-3.293-95.498l7.6837-7.684-7.6837-7.683c-27.4419-25.247-28.5395-68.056-3.293-95.498l103.1811-109.7674c25.247-27.4419 68.056-28.5396 95.498-3.2931l7.684 7.6838 7.683-7.6838c25.247-27.4418 68.056-28.5395 95.498-3.293l109.767 103.1815c27.442 25.246 28.54 68.056 3.294 95.498zm-117.033 11.404c6.779-12.027 10.168-25.365 10.168-40.016 0-24.272-7.653-43.624-22.96-58.056-15.088-14.432-36.845-21.648-65.272-21.648h-101.68v232.224h72.816v-73.8h28.864c18.805 0 34.768-3.499 47.888-10.496 13.339-6.997 23.397-16.4 30.176-28.208zm-63.632-40.016c0 14.213-7.544 21.32-22.632 21.32h-20.664v-42.64h20.664c15.088 0 22.632 7.107 22.632 21.32z"
							fill="#fb8500" fill-rule="evenodd" />
	    			</svg>
					<span>보유포인트 : </span> <span id="pointSpan"></span>
				</h4>
			</div>
			<!-- 보유포인트 출력 끝 -->

			<div class="col-sm-auto">
				<div class="row gx-2 align-items-center">
					<div class="col-auto">
						<form class="row gx-2">
							<div class="col-auto">
								<small>카테고리 :</small>
							</div>
							<div class="col-auto">
								<select id="itemCmmnOption" class="form-select form-select-sm" aria-label="Bulk actions">
								</select>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="card" id="itemMainDiv">
	<div class="card-body">
		<div class="row" id="itemV">
			<!-- 아이템 목록 출력 -->
		</div>
	</div>
</div>

<!-- 아이템 미리보기 모달 시작 -->
<div class="modal fade" id="tooltippopovers" tabindex="-1"
	aria-labelledby="tooltippopoversLabel" aria-hidden="true">
	<div class="modal-dialog mt-6" role="document">
		<div class="modal-content border-0">
			<div class="position-absolute top-0 end-0 mt-2 me-2 z-1">
				<button
					class="btn-close btn btn-sm btn-circle d-flex flex-center transition-base"
					data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body p-0">
				<div class="bg-body-tertiary rounded-top-3 py-3 ps-4 pe-6">
					<h4 class="mb-1" id="tooltippopoversLabel"></h4>
				</div>
			
				<div class="p-4 pb-4 pv">
					<div class="itemDiv">
						<div class="itemImgDiv">
							
							<div id="itemCtgry1Modal" class="itemCtgry1Div">
							</div>
						
							<div id="itemCtgry2Modal" class="itemCtgry2Div">
							</div>
							
							<div id="itemCtgry3Modal" class="dynamic-div itemCtgry3Div">
							</div>
							
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>
</div>
<!-- 아이템 미리보기 모달 끝 -->

<!-- 아이템 선물하기 모달 시작 -->
<div class="modal fade" id="error-modal" tabindex="-1" role="dialog"
	aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document"
		style="max-width: 500px">
		<div class="modal-content position-relative">
			<div class="position-absolute top-0 end-0 mt-2 me-2 z-1">
				<button
					class="btn-close btn btn-sm btn-circle d-flex flex-center transition-base"
					data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body p-0">
				<div class="rounded-top-3 py-3 ps-4 pe-6 bg-body-tertiary">
					<h4 class="mb-1" id="modalExampleDemoLabel">아이템 선물하기</h4>
				</div>
				<div class="p-4 pb-0">
					<form>
						<div class="mb-3">
							<h5 style="display: inline;" id="pItemName">
								<!-- 아이템명 -->
							</h5>
							<h5 style="display: inline;" id="pItemPc">
								<!-- 아이템가격 -->
							</h5>
							<div id="giftFollowDiv" style="overflow: auto; height: 200px;">
								<!-- 선물가능한 친구목록 -->
							</div>
						</div>
						<div class="row g-3">
							<div class="col-auto">
								<label class="col-form-label" for="recipient-name">받는사람 :</label>
							</div>
							<div class="col-9">
								<input id="addrse" class="form-control" id="recipient-name"
									type="text" readonly="readonly" />
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="modal-footer">
				<button class="btn btn-outline-dark me-1 mb-1" type="button"
					data-bs-dismiss="modal">취소</button>
				<button id="sendBtn" data-g-item-code=""
					class="btn btn-outline-dark me-1 mb-1" type="button"
					onclick="fSend(this);">보내기</button>
			</div>
		</div>
	</div>
</div>
<!-- 아이템 선물하기 모달 끝 -->


<script src="<c:url value='/resources/js/app/item/itmeShop.js'/>"></script>