package kr.or.ddit.vo;

import java.util.List;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data 
@EqualsAndHashCode(of = "qustnrNo")
public class QustnrVO {
	@NotNull @Min(0) private Long qustnrNo;
	@NotBlank @Size(max=30) private String userId;
	@NotBlank @Size(max=100) private String qustnrSj;
	@NotBlank @Size(max=7) private String qustnrCreatDt;
	@NotBlank @Size(max=7) private String qustnrEndDt;
	@NotBlank @Size(max=10) private String classCode;
	
	private List<QustnrTrgterVO> qunTrgterList;
	private List<QustnrQuestionsVO> questionsList;
}
