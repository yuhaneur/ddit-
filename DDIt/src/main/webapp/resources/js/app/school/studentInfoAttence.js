/**
 * 
 */
const cPath = document.body.dataset.contextPath;
console.log("cPath",cPath);
let entrance = document.querySelector("#entranceTime");
let checkOut = document.querySelector("#checkOut");
let checkOutTime = document.querySelector("#checkOutTime");
let goingOut = document.querySelector("#goingOut");
let goingIn = document.querySelector("#goingIn");
// 출석하기
function entranceTime(){
    let url = `${cPath}/school/info`
    $.ajax({
        url:url,
        method:'POST',
        dataType:'JSON',
        success:function(resp){
            console.log(resp);
            if(resp.check!=null){
				Swal.fire({
		  			title: resp.check,
				    text: '이미 출석하셨습니다.',
				    icon: 'success',
		       	})
            }
            if(resp.ok!=null){
				Swal.fire({
		  			title: '출석완료',
				    text: resp.ok,
				    icon: 'success',
		       	})
                entrance.innerHTML = resp.ok;
            }
        }
    })
}
// 퇴실하기
checkOut.addEventListener("click",function(){
    let url = `${cPath}/school/info`
    $.ajax({
        url:url,
        method:'put',
        dataType:'JSON',
        contentType:"application/json",
        success:function(resp){
            console.log(resp);
            if(resp.ok!=null){
				Swal.fire({
					title: '퇴실완료',
					text: resp.ok,
					icon: 'success',
				})
                checkOutTime.innerHTML = resp.ok;
            }
            if(resp.fail!=null){
				Swal.fire({
				 	title: resp.fail,
		   		    text: resp.fail,
		   		    icon: 'error'
		         })
            }
        }
    })
})

// 외출하기
goingOut.addEventListener("click",function(){
    let url = `${cPath}/school/goingOut`
    $.ajax({
        url:url,
        method:'post',
        dataType:'JSON',
        success:function(resp){
            console.log(resp);

            if(resp.ok!=null){
				Swal.fire({
					title: '외출!!',
					text: resp.ok,
					icon: 'success',
				})
            }
            if(resp.fail!=null){
				Swal.fire({
					title: resp.fail,
					text: resp.fail,
					icon: 'error',
				})
            }
            if(resp.check!=null){
				Swal.fire({
					title: '복귀안했어요',
					text: resp.check,
					icon: 'error',
				})
            }
        }
    })
})
// 외출 복귀하기
goingIn.addEventListener("click",function(){
    let url = `${cPath}/school/goingOut`
    $.ajax({
        url:url,
        method:'put',
        dataType:'JSON',
        contentType:"application/json",
        success:function(resp){
            console.log(resp);
            if(resp.ok!=null){
				Swal.fire({
					title: '복귀완료!!',
					text: resp.ok,
					icon: 'success',
				})
            }
            if(resp.fail!=null){
				Swal.fire({
					title: resp.fail,
					text: resp.fail,
					icon: 'error',
				})
            }
            if(resp.check!=null){
				Swal.fire({
					title: resp.check,
					text: resp.check,
					icon: 'error',
				})
            }
        }
    })
})

const YrModal = document.querySelector("#yrModal");
const calendarEl = document.querySelector('#calendar');
const mySchStart = document.querySelector("#schStart");
const mySchEnd = document.querySelector("#schEnd");
const mySchTitle = document.querySelector("#schTitle");
const mySchAllday = document.querySelector("#allDay");
const mySchBColor = document.querySelector("#schBColor");
const mySchFColor = document.querySelector("#schFColor");
let classInfoTag = document.querySelector("#classInfo");

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
    editable: true,      // event(일정) 
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
		let url = `${cPath}/school/info`;
        $.ajax({
            url : url,
            dataType:"JSON",
            success: function (resp){
				console.log("resp",resp);
				calendar.getEvents().forEach(element => {
                	console.log("element",element);
            	});
                var events = [];
                let attenanceList = resp.attenanceList;
                let consultingList = resp.consultingList;
                if(attenanceList.length != 0){
                    $.each(attenanceList,function(index,attenance){
                        var startDate = moment(attenance.entranceTime).format('YYYY-MM-DD HH:mm');
                        var endDate = moment(attenance.checkoutTime).format('YYYY-MM-DD HH:mm');
                        var endTime = endDate.substr(11,15);
						var startTime = startDate.substr(11,15);
						var mA = startTime.substr(0,2);
						if(mA>12){
							startTime = "오후 "+startTime;
						}else{
							startTime = "오전 "+startTime;
						}
						var bb = endTime.substr(0,2);
						if(bb>12){
							endTime = "오후 "+endTime;
						}else{
							endTime = "오전 "+endTime;
						}
						
                        events.push({
							display:'block',
							backgroundColor : "#00D27A",
                            title : startTime +" 출석",
                            start : startDate
                        })
                        events.push({
							display:'block',
							backgroundColor : "red",
                            title : endTime+" 퇴실",
                            start : endDate
                        })
                    })
                }
				if(consultingList.length != 0){
					$.each(consultingList,function(index,consulting){
						var startDate = moment(consulting.consultingDe).format('YYYY-MM-DD HH:mm');
						var startTime = startDate.substr(11,15);
						var mA = startTime.substr(0,2);
						console.log("startDate",startDate);
						if(mA>12){
							startTime = "오후 "+startTime;
						}else{
							startTime = "오전 "+startTime;
						}
                        events.push({
                            title : startTime + " " + consulting.teacher.teacherName,
                            start : startDate,
							display:'block',
							backgroundColor : "#D9E5FF"
                        })
					})
				}
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

