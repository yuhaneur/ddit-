package kr.or.ddit.vo;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "messageNo")
public class MessageVO {
	@NotNull
	@Min(0)
	private Long messageNo;
	@Size(max = 80)
	private String messageSj;
	@Size(max = 4000)
	private String messageCn;
	@Size(max = 7)
	private String messageSendDe;
	@NotBlank
	@Size(max = 1)
	private String messageReceptionAt;
	@NotBlank
	@Size(max = 1)
	private String messageImportant;
	
	@NotBlank @Size(max=30)
	private String senderId;
	
	// 메시지 수신을 위한 userId
	@NotBlank @Size(max=30)
	private String userId;
	
	private int atchFileNo; // 이미지 파일 번호
	
	private MultipartFile[] messageFiles;
	
	private List<AtchFileVO> atchList;
	
	/**
	 * 업로드된 첨부파일을 adapter 인 AtchFileVO 로 wrapping
	 */
	public void setMessageFiles(MultipartFile[] messageFiles) {
		  if (messageFiles == null || messageFiles.length == 0) {
		    this.atchList = Collections.emptyList();
		    return;
		  }

		  List<AtchFileVO> atchList = new ArrayList<>();
		  for (MultipartFile messageFile : messageFiles) {
		    if (!messageFile.isEmpty()) {
		      atchList.add(new AtchFileVO(messageFile));
		    }
		  }
		  this.atchList = atchList;
		}
}
