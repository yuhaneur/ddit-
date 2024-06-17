package kr.or.ddit.school.service;

import java.util.ArrayList;
import java.util.List;

import kr.or.ddit.vo.SchedulePairMapVO;
import kr.or.ddit.vo.SjVO;

public class TestClass {
	public static void main(String[] args) {
		new TestClass().test();
	}
	
	public void test() {
		// 총 교육시간
		int amount = 48;
		//총 날짜 구하기
		int day = amount/8;
		SchedulePairMapVO [] spvoList = new SchedulePairMapVO[6];
		List<SjVO> sjvoList = new ArrayList<SjVO>();
		for(int i=0;i<spvoList.length;i++) {
			spvoList[i] = new SchedulePairMapVO();
			SjVO target1 = null;
			SjVO target2 = null;
			for (SjVO sjVO : sjvoList) {
				if(sjVO.getEdcTime()>0) {
					target1 = sjVO;
					break;
				}
			}
			for (SjVO sjVO : sjvoList) {
				if(!target1.equals(sjVO)) {
					if(sjVO.getEdcTime()>0) {
						target2 = sjVO;
						break;
					}
				}
			}
			if(target2 ==null) {
				target2=target1;
			}
			if(target2 ==null && target1==null) {
				break;
			}
			spvoList[i].setFirst(target1);
			spvoList[i].setSecond(target2);
			long time = target1.getEdcTime();
			long time2 = target2.getEdcTime();
			target1.setEdcTime(time-4);
			target2.setEdcTime(time2-4);
		}
		
	}
}
