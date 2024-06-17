package kr.or.ddit.vo;

import java.util.List;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "classCode")
public class ClassVO {
	@NotBlank @Size(max=10) private String classCode;
	@NotBlank @Size(max=10) private String className;
	@NotBlank @Size(max=30) private String userId;
	@NotBlank @Size(max=7) private String classCreationDe;
	@NotBlank @Size(max=7) private String classEndDe;
	 private Long classNmpr;
	@NotBlank @Size(max=10) private String edcCrseCode;
	@NotNull @Min(0) private Long lectureRoomNo;
	@NotNull @Min(0) private Long edcCrseRound;
	
	private EdcCrseVO edcCrse;
	private TeacherVO teacher;
	private List<SjMapping> sjMappingList;
	private List<StudentVO> studentList;
}
