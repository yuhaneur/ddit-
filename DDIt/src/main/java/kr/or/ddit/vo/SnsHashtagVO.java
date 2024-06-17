package kr.or.ddit.vo;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "snsTagNo")
public class SnsHashtagVO {
	@NotNull
	@Min(0)
	private Long snsTagNo;
	@NotNull
	@Min(0)
	private Long snsFeedNo;
	@Size(max = 40)
	private String snsTagCn;
}
