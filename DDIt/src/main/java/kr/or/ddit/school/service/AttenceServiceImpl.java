package kr.or.ddit.school.service;

import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.school.dao.AttenceDAO;
import kr.or.ddit.vo.AttenanceVO;
import kr.or.ddit.vo.GoingOutVO;
import kr.or.ddit.vo.StudentVO;

@Service
public class AttenceServiceImpl implements AttenceService{
	
	@Autowired
	private AttenceDAO dao;
	// 출석등록
	@Override
	public int attenanceStudent(AttenanceVO attenanceVO) {
		int cnt = dao.attenanceStudent(attenanceVO);
		return cnt;
	}
	@Override
	public AttenanceVO selectAttenance(String userId) {
		AttenanceVO attenanceVO= dao.selectAttenance(userId);
		return attenanceVO;
	}
	@Override
	public int updateCheckOut(AttenanceVO attenanceVO) {
		int cnt = dao.updateCheckOut(attenanceVO);
		return cnt;
	}
	@Override
	public int insertGoingOut(GoingOutVO goingOutVO) {
		int cnt = dao.insertGoingOut(goingOutVO);
		return cnt;
	}
	@Override
	public List<GoingOutVO> checkGoingOut(String attenanceCode) {
		List<GoingOutVO> goingOutVO = dao.checkGoingOut(attenanceCode);
		return goingOutVO;
	}
	@Override
	public int updateGoingOut(GoingOutVO goingOutVO) {
		int cnt = dao.updateGoingOut(goingOutVO);
		return cnt;
	}
	@Override
	public StudentVO selectStudentInfoList(StudentVO studentVO) {
		StudentVO vo = dao.selectStudentInfoList(studentVO);
		return vo;
	}
	@Override
	public List<AttenanceVO> selectAttenanceList(String userId) {
		List<AttenanceVO> attenanceList = dao.selectAttenanceList(userId);
		return attenanceList;
	}
	@Override
	public Map<String, Object> attenanceInfo(StudentVO studentVO) {
		String userId= studentVO.getUserId();
		Map<String, Object> attenanceMap = new HashMap<>();
		// d-Day 구하기
		long dDay =0;
		try {
			String classEndDate =  studentVO.getClassVO().getClassEndDe();
			classEndDate = classEndDate.substring(0, 10);
			LocalDate nowDate = LocalDate.now();
			LocalDate endDate = LocalDate.parse(classEndDate,DateTimeFormatter.ISO_DATE );
			// 시간차 구하기
			dDay = nowDate.until(endDate, ChronoUnit.DAYS);
		} catch (NullPointerException e) {
			// TODO: handle exception
		}finally {
			// 출석
			int ok = 0;
			// 지각
			int late = 0;
			// 조퇴
			int sick = 0;
			// 결석
			int no = 0;
			
			// 출결정보 구하기
			List<AttenanceVO> attenanceList =  dao.selectAttenanceList(userId);
			for (AttenanceVO attenanceVO : attenanceList) {
				// 입출결시간이 둘다 있을때
				if(attenanceVO.getEntranceTime()!=null && attenanceVO.getCheckoutTime()!=null) {
					// 입실시간
					String entranceTime =  attenanceVO.getEntranceTime();
					entranceTime = entranceTime.substring(11, 16);
					LocalTime firstTime = LocalTime.parse(entranceTime, DateTimeFormatter.ofPattern("HH:mm"));
					// 퇴실시간 
					String checkOutTime =  attenanceVO.getCheckoutTime();
					checkOutTime = checkOutTime.substring(11, 16);
					LocalTime secondTime = LocalTime.parse(checkOutTime, DateTimeFormatter.ofPattern("HH:mm"));
					// 지각 기준시간
					LocalTime lateTime = LocalTime.of( 9, 10, 0);
					// 지각 기준시간보다 후의 입실시간이면 지각처리
					if(firstTime.isAfter(lateTime)) {
						late++;
						continue;
					}
					
					// 조퇴 기준시간
					LocalTime outTime = LocalTime.of(17,40,0);
					// 조퇴기준시간보다 전의 퇴실시간이면 조퇴처리
					if(secondTime.isBefore(outTime)) {
						sick++;
						continue;
					}
					// 뒤에서(퇴실) 앞에뺀(출석) 시간 (분)
					long minutes = ChronoUnit.MINUTES.between( firstTime, secondTime );
					// 퇴실 - 입실이 480분 이상이면 정상출결
					if(minutes>=480) {
						ok++;
						continue;
					}
				}
				
				// 출결이나 퇴실이나 둘중에 하나만 없어도 결석처리
				if(attenanceVO.getEntranceTime()==null || attenanceVO.getCheckoutTime()==null) {
					no++;
				}
			}
			attenanceMap.put("ok", ok);
			attenanceMap.put("late", late);
			attenanceMap.put("sick", sick);
			attenanceMap.put("no", no);
			attenanceMap.put("dDay", dDay);
		}
		return attenanceMap;
	}

}
