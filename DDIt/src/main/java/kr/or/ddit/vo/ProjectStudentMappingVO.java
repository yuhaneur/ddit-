package kr.or.ddit.vo;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class ProjectStudentMappingVO {
	
	@Size(max = 30)
	private String userId;
	@NotNull
	@Min(0)
	private Long projectNo;
	private String projectRole;
	@Size(max = 1)
	private String deleteAt;
	
	
	private StudentVO student;
	
	
}
