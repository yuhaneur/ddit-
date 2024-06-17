package kr.or.ddit.message.service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import kr.or.ddit.message.dao.MessageDAO;
import kr.or.ddit.paging.PaginationInfo;
import kr.or.ddit.vo.AtchFileVO;
import kr.or.ddit.vo.MessageVO;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MessageServiceImpl implements MessageService{
	private final MessageDAO mDao;
	
	@Value("#{appInfo.atchSavePath}")
	private File saveFolder; // AppInfo 설정 및 properties 파읿 빈 등록(root-context.xml)
	
	@PostConstruct
	public void init() throws IOException {
		if(!saveFolder.exists()) saveFolder.mkdirs();
	}

	/**
	 * 첨부파일 메타데이터와 2진 데이터 분리 저장
	 * @param board
	 * @throws IOException 
	 */
	private int saveAttatchList(MessageVO message){
		List<AtchFileVO> atchList = message.getAtchList();
		int cnt = 0;
		if(atchList!=null && !atchList.isEmpty()) {
			// DB에 저장해야됨
			cnt += mDao.insertAttatchMessage(message);
			// 로컬에 저장함
			for (AtchFileVO atchFileVO : atchList) {
				atchFileVO.saveToFolder(saveFolder);
			}
		}
	return cnt;
}
	
	@Override
	public List<MessageVO> readMessageList(Map<String, Object> messageMap) {
		int totalRecord = mDao.selectTotalRecordMessage(messageMap);
		((PaginationInfo)messageMap.get("paging")).setTotalRecord(totalRecord);
		List<MessageVO> list = mDao.selectMessageList(messageMap);
		return list;
	}
	
	@Override
	public List<MessageVO> readDeleteMessageList(Map<String, Object> messageMap) {
		int totalRecord = mDao.selectTotalRecordDeleteMessage(messageMap);
		((PaginationInfo)messageMap.get("paging")).setTotalRecord(totalRecord);
		List<MessageVO> list = mDao.selectMessageDeleteList(messageMap);
		return list;
	}

	@Override
	public List<MessageVO> readImportantMessageList(Map<String, Object> messageMap) {
		int totalRecord = mDao.selectTotalRecordImportantMessage(messageMap);
		((PaginationInfo)messageMap.get("paging")).setTotalRecord(totalRecord);
		List<MessageVO> list = mDao.selectMessageImportantList(messageMap);
		return list;
	}
	
	@Override
	public MessageVO readMessage(int messageNo) {
		MessageVO message = mDao.selectMessage(messageNo);
		return message;
	}

	@Override
	public int createMessage(MessageVO messageVo) {
		int chk = saveAttatchList(messageVo);
		if(chk > 0) {
			messageVo.setAtchFileNo(1);
			mDao.insertMessage(messageVo);
			return chk;
		} else {
			mDao.insertMessage(messageVo);
			return chk;
		}
	}

	@Override
	public int deleteMessage(int messageNo) {
		int chk = mDao.deleteMessage(messageNo);
		return chk;
	}
	
	@Override
	public int deleteHardMessage(int messageNo) {
		int chk = mDao.deleteHardMessage(messageNo);
		return chk;
	}

	@Override
	public int importantMessage(int messageNo) {
		int chk = mDao.importantMessage(messageNo);
		return chk;
	}

	@Override
	public int importantMessageRevert(int messageNo) {
		int chk = mDao.importantMessageRevert(messageNo);
		return chk;
	}

	@Override
	public int revertMessage(int messageNo) {
		int chk = mDao.revertMessage(messageNo);
		return chk;
	}
}
