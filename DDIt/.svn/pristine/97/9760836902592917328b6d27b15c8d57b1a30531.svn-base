package kr.or.ddit.vo;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Data;

@Data
public class LectureRoomVO {
	@NotNull @Min(0) private Long lectureRoomNo;
	@NotBlank @Size(max=50) private String lectureRoomName;
	@Size(max=1) private String lectureRoomTy;
}
