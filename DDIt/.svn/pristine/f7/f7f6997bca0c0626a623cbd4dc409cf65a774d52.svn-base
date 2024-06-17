package kr.or.ddit.message.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.vo.MessageVO;

@Mapper
public interface MessageDAO {
	
	/**
	 * @param paging 
	 * @return 메세지 리스트
	 */
	public List<MessageVO> selectMessageList(Map<String, Object> messageMap);
	public int selectTotalRecordMessage(Map<String, Object> messageMap);
	
	/**
	 * @param paging 
	 * @return 휴지통 메세지 리스트
	 */
	public List<MessageVO> selectMessageDeleteList(Map<String, Object> messageMap);
	public int selectTotalRecordDeleteMessage(Map<String, Object> messageMap);
	
	/**
	 * @param paging 
	 * @return 보관함 메세지 리스트
	 */
	public List<MessageVO> selectMessageImportantList(Map<String, Object> messageMap);
	public int selectTotalRecordImportantMessage(Map<String, Object> messageMap);
	
	/**
	 * @return 메세지 상세보기
	 */
	public MessageVO selectMessage(int messageNo);
	
	/**
	 * @return 메세지 발신
	 */
	public int insertMessage(MessageVO messageVo);
	public int insertAttatchMessage(@Param("messageVo") MessageVO messageVo);
	
	
	
	/**
	 * @param messageNo
	 * @return 메세지 삭제
	 */
	public int deleteMessage(int messageNo);
	
	/**
	 * @param messageNo
	 * @return 메세지 복구
	 */
	public int revertMessage(int messageNo);
	
	/**
	 * @param messageNo
	 * @return 메세지 영구 삭제
	 */
	public int deleteHardMessage(int messageNo);
	
	/**
	 * @param messageNo
	 * @return 메세지 보관
	 */
	public int importantMessage(int messageNo);
	
	/**
	 * @param messageNo
	 * @return 메세지 보관 취소
	 */
	public int importantMessageRevert(int messageNo);
}
