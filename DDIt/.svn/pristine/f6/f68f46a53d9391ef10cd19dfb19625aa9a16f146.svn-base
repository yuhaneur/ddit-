package kr.or.ddit.vo;

import java.util.List;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = {"sjNo","edcCrseCode"})
public class SjVO {
	@NotNull @Min(0)
	private Long sjNo;
	@NotBlank @Size(max=10) 
	private String edcCrseCode;
	@NotBlank @Size(max=20)
	private String sjName;
	private Long edcTime;
	@NotNull @Min(0) 
	private Long sjOrdr;
	
	private List<SjManagerVO> sjManagerList;
	private EdcCrseVO edcCrse;
	private List<CurriculumVO> curriculumList;
}
