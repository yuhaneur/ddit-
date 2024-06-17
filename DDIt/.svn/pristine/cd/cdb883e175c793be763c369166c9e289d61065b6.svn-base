package kr.or.ddit.vo;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import lombok.Data;

@Data
public class ProjectVO {
	
	//@NotNull
	//@Min(0)	
	private Long projectNo;
	@NotBlank
	@Size(max = 100)
	private String projectName;
	@Size(max = 7)
	private String projectCreatDate;
	@Size(max = 7)
	private String projectDueDate;
	@Size(max = 100)
	private String projectStatus;
	@Size(max = 10)
	private String projectDelyn;
	@Size(max = 7)
	private String projectUpdtDate;
	@Size(max = 7)
	private String projectDeleteDate;
	@NotBlank
	@Size(max = 100)
	private String userId;
	private Long projectDeletePassword;
	@Size(max = 10)
	private String auth;
	@Size(max=2000)
	private String projectCn;
	private Long projectParent;
	private ProjectVO parent;

}
