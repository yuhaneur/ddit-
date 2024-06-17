package kr.or.ddit.vo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.NumberFormat;
import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.extern.slf4j.Slf4j;
@Slf4j
@Data
@EqualsAndHashCode(of = "projectPostNo")
public class ProjectPostVO implements Serializable{

	/* @NotNull */
	@Min(0)
	private Long projectPostNo;
	@NotBlank
	@Size(max = 600)
	private String projectPostSj;
	@Size(max = 4000)
	private String projectPostCn;

	@Size(max = 7)
	private String projectPostWritingDe;
	private Long projectPostRdcnt;
	@Size(max = 1)
	private String projectPostDeleteAt;
	private Long atchFileNo;
	private Long projectCount;
	
	private Long projectNo;
	
	private List<GrAtchFileVO> atchList;
	
	private MultipartFile[] projectFiles;
	
	
	
	/**
	 * 업로드된 첨부파일을 adapter 인 GrAtchFileVO 로 wrapping
	 */
	
	
	public void setProjectFiles(MultipartFile[] projectFiles) {
		// 파일들 비어있으면 업로드파일정보저장하는리스트 빈 리스트로만들고 끝
		if(projectFiles == null || projectFiles.length ==0) {
			this.atchList = Collections.emptyList();
			return;
		}
		// 안비어있으면 리스트 하나만들고
		List<GrAtchFileVO> atchList = new ArrayList<>();
		 // 파일들 하나씩 뺴서 업로드파일정보저장하는 리스트에 추가해줌
		for(MultipartFile projectFile : projectFiles) {
			if(!projectFile.isEmpty()) {
				atchList.add(new GrAtchFileVO(projectFile));
			}
		}
		// 업로드된 파일들의 배열을 저장
		this.atchList = atchList;
		log.info("atchList==>>>>>>:{}",atchList);
		
	}
	
}
