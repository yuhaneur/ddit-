package kr.or.ddit.vo;

import java.util.List;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = {"qustnrNo","qustnrQuestionsNo"})
public class QustnrQuestionsVO {
	@NotNull @Min(0) private Long qustnrQuestionsNo;
	@NotNull @Min(0) private Long qustnrNo;
	@NotBlank @Size(max=1000) private String qustnrCn;
	
	private List<QustnrAnswerTyVO> qustnrAnswerTyList;
}
