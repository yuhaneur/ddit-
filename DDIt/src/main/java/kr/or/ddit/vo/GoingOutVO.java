package kr.or.ddit.vo;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "goingoutNo")
public class GoingOutVO {
	@NotNull @Min(0) private Long goingoutNo;
	@Size(max=7) private String entranceTime;
	@Size(max=7) private String checkoutTime;
	@NotBlank @Size(max=10) private String attenanceCode;
}
