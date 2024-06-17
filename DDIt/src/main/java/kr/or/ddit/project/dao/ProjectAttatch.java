package kr.or.ddit.project.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.vo.GrAtchFileVO;
import kr.or.ddit.vo.ProjectPostVO;

@Mapper
public interface ProjectAttatch {


/**
 * 첨부파일의 메타데이터를 위한 CRUD interface
 */

public int insertAttatchList(ProjectPostVO projectPostVO);

/**
 * 첨부파일 조회를 위한 메소드
 */
public GrAtchFileVO selectAttatch(GrAtchFileVO grAtchFileVO);

/**
 * 첨부파일 삭제를 위한 메소드
 */
public int deleteAttatch(GrAtchFileVO grAtchFileVO);

/**
 * 특정 게시글의 첨부파일 전체 삭제
 */
public int deleteAttatches(@Param("projectPostNo") int projectPostNo);

/**
 * 첨부파일 증가를 카운트하기위한 메소드
 */
public int incrementDowncount(GrAtchFileVO grAtchFileVO);



}