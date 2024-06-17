package kr.or.ddit.vo;

import java.io.Serializable;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "authorityNo")
public class AuthorityVO implements Serializable {

	@NotBlank
	@Size(max = 20)
	private String authorityNo;
	
	@NotBlank
	@Size(max = 30)
	private String userId;
	
	@NotBlank
	@Size(max = 10)
	private String auth;
	
	private AuthorGrVO authorGr;
}
