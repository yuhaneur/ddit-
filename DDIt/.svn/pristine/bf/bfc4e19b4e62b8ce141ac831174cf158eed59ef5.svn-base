package kr.or.ddit.vo;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class CmmnCodeVO {
	@NotNull
	@Min(0)
	private Long cmmnCode;
	@NotBlank
	@Size(max = 20)
	private String cmmnCodeGr;
	@Size(max = 20)
	private String cmmnCodeName;
	@Size(max = 100)
	private String cmmnCodeDesc;
	private Long outptOrdr;
	@Size(max = 20)
	private String useAt;
	@Size(max = 20)
	private String upperCmmnCodeGr;
	@Size(max = 20)
	private String upperCmmnCode;

}
