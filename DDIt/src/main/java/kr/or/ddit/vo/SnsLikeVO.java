package kr.or.ddit.vo;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "snsLikeNo")
public class SnsLikeVO {
	@NotNull
	@Min(0)
	private int snsLikeNo;
	@NotNull
	@Min(0)
	private Long snsFeedNo;
	@Size(max = 30)
	private String snsLikeUserId;
	@NotBlank
	@Size(max = 7)
	private String snsLikeDe;
	@NotBlank
	@Size(max = 1)
	private String snsLikeDeleteAt;
}
