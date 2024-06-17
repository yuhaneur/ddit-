package kr.or.ddit.vo;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "recieveMessageNo")
public class RecievemessageVO {
	@NotNull @Min(0)
	private Long recieveMessageNo;
	
	private Long messageNo;
	
	@NotBlank @Size(max=30)
	private String userId;
}
