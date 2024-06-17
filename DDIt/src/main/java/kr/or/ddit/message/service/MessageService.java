package kr.or.ddit.message.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import kr.or.ddit.vo.MessageVO;

@Service
public interface MessageService {
	
	/**
	 * @return 메세지 리스트
	 */
	public List<MessageVO> readMessageList(Map<String, Object> messageMap);
	
	/**
	 * @return 휴지통 메세지 리스트
	 */
	public List<MessageVO> readDeleteMessageList(Map<String, Object> messageMap);
	
	/**
	 * @return 보관함 메세지 리스트
	 */
	public List<MessageVO> readImportantMessageList(Map<String, Object> messageMap);
	
	/**
	 * @return 메세지 상세보기
	 */
	public MessageVO readMessage(int messageNo);
	
	/**
	 * @return 메세지 발신
	 */
	public int createMessage(MessageVO messageVo);
	
	/**
	 * @return 메세지 삭제
	 */
	public int deleteMessage(int messageNo);
	
	/**
	 * @return 메세지 복구
	 */
	public int revertMessage(int messageNo);
	
	/**
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
