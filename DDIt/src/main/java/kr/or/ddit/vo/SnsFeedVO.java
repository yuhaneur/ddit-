package kr.or.ddit.vo;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "snsFeedNo")
public class SnsFeedVO {
	@NotNull
	@Min(0)
	private Long snsFeedNo;
	@Size(max = 30)
	private String userId;
	@Size(max = 4000)
	private String snsFeedCn;
	@NotBlank
	@Size(max = 7)
	private String snsFeedCreatDe;
	@Size(max = 7)
	private String creatUpdtDe;
	private Long atFileNo;
	@NotBlank
	@Size(max = 1)
	private String snsFeedAt;
	@NotNull
	@Min(0)
	private Long snsLikeCount;
	
	@Size(max = 40)
	private String snsTagCn;
	
	@NotBlank
	@Size(max = 1)
	private String snsFeedDel;
	
	private String studentName;
	
	private MultipartFile[] snsFiles;
	
	private List<AtchFileVO> atchList;
	
	private String grAtchFileStreFileName;
	
	
	/**
	 * 업로드된 첨부파일을 adapter 인 AtchFileVO 로 wrapping
	 */
	public void setSnsFiles(MultipartFile[] snsFiles) {
		  if (snsFiles == null || snsFiles.length == 0) {
		    this.atchList = Collections.emptyList();
		    return;
		  }

		  List<AtchFileVO> atchList = new ArrayList<>();
		  for (MultipartFile snsFile : snsFiles) {
		    if (!snsFile.isEmpty()) {
		      atchList.add(new AtchFileVO(snsFile));
		    }
		  }
		  this.atchList = atchList;
		}
	
	// HAS A 관계
	private SnsHashtagVO snsHash;
	
	private List<SnsAnswerVO> answerList;
}
