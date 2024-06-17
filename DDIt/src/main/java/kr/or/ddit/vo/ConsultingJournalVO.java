package kr.or.ddit.vo;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Data;

@Data
public class ConsultingJournalVO {
	@NotNull @Min(0) private Long consultingJournalNo;
	@NotNull @Min(0) private Long consultingNo;
	@Size(max=1000) private String consultingCn;
	
	private ConsultingVO consulting;
}
