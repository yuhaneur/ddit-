package kr.or.ddit.vo;

import java.util.List;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "edcCrseCode")
public class EdcCrseVO {
	private String edcCrseCode;
	private String edcCrseName;
	private Long edcDayCo;
	private String edcBeginDe;
	private String edcEndDe;
	
	private List<SjVO> sjList;
}
