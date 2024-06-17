package kr.or.ddit.vo;

import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import java.util.Optional;
import java.util.UUID;

import javax.annotation.PostConstruct;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.function.Failable;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;
import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@NoArgsConstructor
@EqualsAndHashCode(of = "atchFileNo")
public class AtchFileVO implements Serializable{
	public AtchFileVO(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
		fileName = uploadFile.getOriginalFilename();
		fileMg = uploadFile.getSize();
		fileTy = uploadFile.getContentType();
		fileFancysize = FileUtils.byteCountToDisplaySize(fileMg);
		streFileName = UUID.randomUUID().toString();
	}
	
	@ToString.Exclude
	private MultipartFile uploadFile;		// 업로드된 파일
	
	@NotNull
	@Min(0)
	private Long atchFileNo; // 통합첨부파일 번호
	@NotNull
	@Min(0)
	private Long atchFileTurn; // 첨부파일순번
	@Size(max = 100)
	private String jobSe;	// 업무구분
	@NotBlank
	@Size(max = 500)
	private String fileCours;	// 파일경로
	@Size(max = 100)
	private String fileName;	// 사용자가 선택한 원래 파일명
	@Size(max = 100)
	private String streFileName;	// 서버에 저장 시 사용될 저장파일명 (경로포함)
	@Size(max = 50)
	private String fileTy;		// 파일유형
	private Long fileMg;		// 파일크기
	private String fileFancysize; // 파일크기 축약형 ( 뷰 )
	private Long dwldRtrvl;	// 다운횟수
	
	@Size(max = 7)
	@DateTimeFormat(iso = ISO.DATE_TIME)
	private String fileRegistDe;	// 파일등록일자
	@Size(max = 100)
	private String fileRegistId;	// 파일등록아이디
	@Size(max = 7)
	private String fileUpdtDe;		// 파일수정일자
	@Size(max = 100)
	private String fileUpdtId;		// 파일수정아이디
	
	
	public void saveToFolder(File folder){
		Optional.ofNullable(uploadFile).filter(uf -> !uf.isEmpty())
				.ifPresent(Failable.asConsumer(uf -> uploadFile.transferTo(new File(folder, streFileName))));
	}

	public byte[] getBytes() {
		return Optional.ofNullable(uploadFile).filter(uf -> !uf.isEmpty())
				.map(Failable.asFunction(MultipartFile::getBytes)).orElse(new byte[] {});
	}
	
	@ToString.Exclude
	private Resource binary; // 파일 2진데이터
}
