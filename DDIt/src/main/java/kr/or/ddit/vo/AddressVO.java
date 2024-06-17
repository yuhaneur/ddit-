package kr.or.ddit.vo;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "addressNo")
public class AddressVO {
	@NotNull
	@Min(0)
	private Long addressNo;
	@NotBlank
	@Size(max = 30)
	private String userId2;
	@Size(max = 30)
	private String userId;
	@Size(max = 30)
	private String addressRemark;
}
