package kr.or.ddit;

import java.util.Arrays;

import org.junit.jupiter.api.Test;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

class ScheduleTest {

	@Data
	@EqualsAndHashCode(of="code")
	@NoArgsConstructor
	@AllArgsConstructor
	// sjvo
	class SubjectVO{
		private String code;
		// 순서
		private int order;
		// 과목 교육시간
		private int time;
		// 과목 이름
		private String name;
		
	}
	
	@Data
	class SubjectPairVO{
		// 오전에들어갈 sjvo
		private SubjectVO amPart;
		// 오후에들어갈 sjvo
		private SubjectVO pmPart;
		@Override
		public String toString() {
			return "[오전=" + amPart.getName() + ", 오후=" + pmPart.getName() + "]";
		}
	}
	
	@Test
	void test() {
		SubjectVO subjectA = new SubjectVO("S001", 1, 8, "A과목");
		SubjectVO subjectB = new SubjectVO("S002", 2, 8, "B과목");
		SubjectVO subjectC = new SubjectVO("S003", 3, 12, "C과목");
		SubjectVO subjectD = new SubjectVO("S004", 4, 20, "D과목");
		// sjvo들을 담을 배열을 만든다.
		SubjectVO[] allSubject = new SubjectVO[] {subjectA, subjectB, subjectC, subjectD};
		//  수업시간 합계
		int timeAmount = selectAllSubjectTime(allSubject);
		// 합계를 8로 나눔으로써 하루를 표시
		int dayCount = timeAmount / 8;
		
		// sjvo를 담을 pairVO 를 담을 배열의 크기를 정해준다.(일수로)
		SubjectPairVO[] pairPerDays = new SubjectPairVO[dayCount];
		//배열의 크기만큼 반복문을 돌리고 
		for(int i = 0; i < pairPerDays.length; i++) {
			SubjectPairVO tmp = findPair(allSubject);
			// 더이상의 페어가 없으면 멈춤
			if(tmp==null) 
					break;
			// 있으면 페어vo 배열에 페어vo 한개를 넣어줌
			pairPerDays[i] = tmp;
		}
		
		for(SubjectPairVO single :pairPerDays) {
			System.out.println(single);
		}
	}

	// 수업 총량
	private int selectAllSubjectTime(SubjectVO[] allSubject) {
		// Arrays.stream 람다를 사용할수있게된다
		return Arrays.stream(allSubject)
				// .map 원하는 필드만 뽑아내거나 변환할때 사용
				// mapToInt 스트림은 intStream으로 변환 
				//[인스턴스]::[메소드명(or new)]
					.mapToInt(SubjectVO::getTime)
					.sum();
	}
	// 한쌍 찾기
	private SubjectPairVO findPair(SubjectVO[] allSubject) {
		SubjectVO amPart = null;
		SubjectVO pmPart = null;
		for(int i = 0; i < allSubject.length; i++) {
			// 시간이 4시간 이상 남았으면
			if(allSubject[i].getTime()>=4) {
				// 오전파트에 첫번째 sjvo를 넣고
				amPart = allSubject[i];
				// 만약 마지막 친구이면 오후타임에도 오전타임그대로 넣는다
				if(i < allSubject.length - 1) {
					pmPart = allSubject[i+1];
				}else {
					pmPart = amPart;
				}
				break;
			}
		}
		// 페어 vo 하나 만들어주고
		SubjectPairVO makedPair = null;
		// 오전과 오후가 비지 않았으면
		if(amPart!=null && pmPart!=null) {
			// 각각 4시간씩 빼준다
			amPart.setTime(amPart.getTime() - 4);
			pmPart.setTime(pmPart.getTime() - 4);
			// 그리고 페어vo에 오전과 오후파트를 각각 나눠준다.
			makedPair = new SubjectPairVO();
			makedPair.setAmPart(amPart);
			makedPair.setPmPart(pmPart);
		}
		return makedPair;
	}
}







