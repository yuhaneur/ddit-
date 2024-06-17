package kr.or.ddit.vo;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "consultingNo")
public class ConsultingVO {

	@NotNull @Min(0) private Long consultingNo;
	@Size(max=1000) private String consultingReqstCntnts;
	@Size(max=1) private String consultingConfmAt;
	@Size(max=7) private String consultingDe;
	@NotBlank @Size(max=30) private String userId;
	@NotBlank @Size(max=30) private String userId2;
	
	private TeacherVO teacher;
	private StudentVO student;
}
