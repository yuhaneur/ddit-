package kr.or.ddit.vo;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Data;

@Data
public class ScheduleVO {
	@NotNull @Min(0) private Long sceduleNo;
	@NotBlank @Size(max=10) private String classCode;
	@NotBlank @Size(max=7) private String startDate;
	@NotBlank @Size(max=7) private String endDate;
	@NotBlank @Size(max=20) private String sjName;
	@NotNull @Min(0) private Long sjOrdr;
	@NotNull @Min(0) private Long edcTime;
	@Size(max=30) private String userId;
	@Size(max=2) private String mnOrAt;
	private String teacherName;
	private Long sjNo;
}
