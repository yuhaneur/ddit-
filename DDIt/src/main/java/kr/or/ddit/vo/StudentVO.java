package kr.or.ddit.vo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "userId")
public class StudentVO implements Serializable {
	@NotBlank
	@Size(max = 30)
	private String userId;
	@Size(max = 30)
	private String studentGender;
	@NotBlank
	@Size(max = 10)
	private String classCode;
	@Size(max = 30)
	private String studentName;
	@Size(max = 100)
	private String studentPhoneno;
	@Size(max = 1000)
	private String studentAddress;
	@Size(max = 200)
	private String studentMail;
	@Size(max = 1000)
	private String studentIntro; // 프로필 자기소개
	private int atchFileNo; // 프로필 이미지번호

	private MultipartFile[] imgFiles;

	private List<AtchFileVO> atchList;

	// 학급 관계
	private ClassVO classVO;
	// 출결 관계
	private List<AttenanceVO> attenanceList;

	public void setImgFiles(MultipartFile[] imgFiles) {
		if (imgFiles == null || imgFiles.length == 0) {
			this.atchList = Collections.emptyList();
			return;
		}

		List<AtchFileVO> atchList = new ArrayList<>();
		for (MultipartFile imgFile : imgFiles) {
			if (!imgFile.isEmpty()) {
				atchList.add(new AtchFileVO(imgFile));
			}
		}
		this.atchList = atchList;
	}

}
