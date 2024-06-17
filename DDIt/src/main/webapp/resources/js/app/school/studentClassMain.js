/**
 * 
 */

const cPath = document.body.dataset.contextPath;
const YrModal = document.querySelector("#yrModal");
const calendarEl = document.querySelector('#calendar');
const mySchStart = document.querySelector("#schStart");
const mySchEnd = document.querySelector("#schEnd");
const mySchTitle = document.querySelector("#schTitle");
const mySchAllday = document.querySelector("#allDay");
const mySchBColor = document.querySelector("#schBColor");
const mySchFColor = document.querySelector("#schFColor");

let classInfoTag = document.querySelector("#classInfo");
// 학생자기자신 정보
let studentInfo =document.querySelector("#studentInfo");
// 선생님이 학생정보보는곳
let studentsInfo = document.querySelector("#studentsInfo");
// 학생 상담화면가는곳
let studentConsulting = document.querySelector("#studentConsulting");
// 선생 상담화면가는곳
let teacherConsulting = document.querySelector("#teacherConsulting");

let userId= document.querySelector("#userId").value;
console.log("classInfo",classInfoTag);
console.log("classInfo.html",classInfoTag.value);
// 접속한 사람의 클래스코드
let classInfo = classInfoTag.value;

// 수업화면 가는 이벤트
function teachingPage(){
	location.href=`${cPath}/school/class/${classInfo}`;
}

// 설문 보러가는 이벤트
function qustnr(){
	location.href=`${cPath}/school/sulmoon/${classInfo}`;
}

// 

// 선생님이 학생들 정보 보러가는 이벤트
studentsInfo?.addEventListener("click",function(){
    location.href=`${cPath}/school/studentsInfo/${classInfo}`
})
// 학생자기자신 정보 보러가는 이벤트
studentInfo?.addEventListener("click",function(){
//	if(userId.substring(0,1)=="S"){
	    location.href=`${cPath}/school/info/${classInfo}`;
//	}else{
//		location.href=`${cPath}/school/studentsInfo/${classInfo}`
//	}
})
// 학생 상담 화면 보러가는 이벤트
studentConsulting?.addEventListener("click",function(){
    location.href=`${cPath}/school/consulting/${classInfo}`;
})
// 선생님 상담 화면 보러가는 이벤트
teacherConsulting?.addEventListener("click",function(){
    location.href=`${cPath}/school/consultingTeacher/${classInfo}`;
})


let url = `${cPath}/school/schedule/${classInfo}`;
//         캘린더 헤더 옵션
const headerToolbar = {
    left: '',
    center: 'title',
    right: 'prevYear,prev,next,nextYear today'
}
        
// 캘린더 생성 옵션(참공)
const calendarOption = {
    height: '1000px', // calendar 높이 설정
    expandRows: true, // 화면에 맞게 높이 재설정
    slotMinTime: '09:00', // Day 캘린더 시작 시간
    slotMaxTime: '18:00', // Day 캘린더 종료 시간
    // 맨 위 헤더 지정
    headerToolbar: headerToolbar,
    initialView: 'dayGridMonth',  // default: dayGridMonth 'dayGridWeek', 'timeGridDay', 'listWeek'
    locale: 'kr',        // 언어 설정
    selectable: true,    // 영역 선택
    selectMirror: true,  // 오직 TimeGrid view에만 적용됨, default false
    navLinks: false,      // 날짜,WeekNumber 클릭 여부, default false
    weekNumbers: false,   // WeekNumber 출력여부, default false
    editable: false,      // event(일정) 
    /* 시작일 및 기간 수정가능여부
    eventStartEditable: false,
    eventDurationEditable: true,
    */
    dayMaxEventRows: true,  // Row 높이보다 많으면 +숫자 more 링크 보임!
    /*
    views: {
        dayGridMonth: {
            dayMaxEventRows: 3
        }
    },
    */
		
    nowIndicator: true,
    events:function(classInfo, successCallback, failureCallback) {
        // 달력에 저장된 시간표 테이블에잇는거 뿌려줘야됨
        $.ajax({
            url:url,
            dataType:'json',
            success:function(resp){
				
                console.log("resp",resp);
                // 서버에서 가져온 데이터들 담을 빈배열선언
                var events = [];
                $.each(resp,function(i,v){
                    console.log("i",i);
                    console.log("v",v);
                    //db에서 가져온 데이터 스트링으로 바꾸고
                    var startdate = moment(v.startDate).format('YYYY-MM-DD');
                    var enddate = moment(v.endDate).format('YYYY-MM-DD');
					if(v.teacherName==null){
						v.teacherName = "";
					}
                    console.log("startdate",startdate);
                    console.log("enddate",enddate);
                    // events 속성 title: 제목에 표시
                    // start 시작날짜
                    // end 끝날짜 날짜가 맞으면 자동으로 달력 날짜에 맞춰서 그날짜에 맞게 데이터 출려해주나봄
                    events.push({
                        title:v.sjName+" 담당교사 : \n"+v.teacherName,
                        start:startdate,
                        end:enddate
                    })
                    console.log("events",events);
                })
                // 다 담은 데이터를 성공하면 events 값에 넣어주나봄
                successCallback(events);
            }
        })
    }
}

// 캘린더 생성
const calendar = new FullCalendar.Calendar(calendarEl, calendarOption);
// 캘린더 그리깅
calendar.render();

// 캘린더 이벤트 등록
calendar.on("eventAdd", info => console.log("Add:", info));
calendar.on("eventChange", info => console.log("Change:", info));
calendar.on("eventRemove", info => console.log("Remove:", info));
calendar.on("eventClick", info => {
    console.log("eClick:", info);
    console.log('Event: ', info.event.extendedProps);
    console.log('Coordinates: ', info.jsEvent);
    console.log('View: ', info.view);
    // 재미로 그냥 보더색 바꾸깅
    info.el.style.borderColor = 'red';
});
calendar.on("eventMouseEnter", info => console.log("eEnter:", info));
calendar.on("eventMouseLeave", info => console.log("eLeave:", info));
calendar.on("dateClick", info => console.log("dateClick:", info));
// calendar.on("select", info => {
//     console.log("체킁:", info);
//     mySchStart.value = info.startStr;
//     mySchEnd.value = info.endStr;
//     YrModal.style.display = "block";
// });

// 일정(이벤트) 추가하깅
function fCalAdd() {
    if (!mySchTitle.value) {
         Swal.fire({
		 	title: '등록실패',
   		    text: '제목을입력해주세요.',
   		    icon: 'error'
         })
        mySchTitle.focus();
        return;
    }
    let bColor = mySchBColor.value;
    let fColor = mySchFColor.value;
    if (fColor == bColor) {
        bColor = "black";
        fColor = "yellow";
    }

    let event = {
        start: mySchStart.value,
        end: mySchEnd.value,
        title: mySchTitle.value,
        allDay: mySchAllday.checked,
        backgroundColor: bColor,
        textColor: fColor
    };

    calendar.addEvent(event);
    fMClose();
}

// 모달 닫기
function fMClose() {
    YrModal.style.display = "none";
}


function tableShow() {
		let timeTable = document.querySelector("#timeTable");
		let calendar = document.querySelector("#calendar");
		if (calendar.style.display == "none") {
			calendar.style.display = "block";
			timeTable.innerHTML = "시간표숨기기"
		} else {
			calendar.style.display = "none";
			timeTable.innerHTML = "시간표보기"
		}
	}