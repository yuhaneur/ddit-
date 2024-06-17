package kr.or.ddit.vo;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "attenanceCode")
public class AttenanceVO {
	@NotBlank @Size(max=10) private String attenanceCode;
	@Size(max=7) private String entranceTime;
	@Size(max=7) private String checkoutTime;
	@NotBlank @Size(max=30) private String userId;
}
