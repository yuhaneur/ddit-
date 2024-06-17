package kr.or.ddit.sns.service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Optional;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;

import org.apache.commons.lang3.function.Failable;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import kr.or.ddit.paging.PaginationInfo;
import kr.or.ddit.sns.dao.SnsDAO;
import kr.or.ddit.sns.dao.SnsFileDAO;
import kr.or.ddit.vo.AtchFileVO;
import kr.or.ddit.vo.FollowVO;
import kr.or.ddit.vo.SnsAnswerVO;
import kr.or.ddit.vo.SnsFeedVO;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class SnsServiceImpl implements SnsService{
	private final SnsDAO snsDao;
	private final SnsFileDAO snsFiledDao;
	
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
	private void saveAttatchList(SnsFeedVO feed) throws IOException {
		try {
			List<AtchFileVO> atchList = feed.getAtchList();
				Optional.ofNullable(atchList)
				.filter(l->!l.isEmpty())
				.ifPresent(pl->{
					snsFiledDao.insertAtchFileList(feed);
					pl.forEach(Failable.asConsumer((p)->p.saveToFolder(saveFolder)));
				});
		}catch (Exception e) {
			throw new IOException();
		}
	}
	
	@Override
	public List<SnsFeedVO> readFeedList() {
		// int totalRecord = snsDao.selectTotalRecordProject(paging);
		// paging.setTotalRecord(totalRecord);
		List<SnsFeedVO> feedList = snsDao.selectFeedList();
		
		return feedList;
	}
	
	@Override
	public List<SnsFeedVO> readMyFeedList(String userId) {
		// int totalRecord = snsDao.selectTotalRecordProject(paging);
		// paging.setTotalRecord(totalRecord);
		List<SnsFeedVO> feedList = snsDao.selectMyFeedList(userId);
		return feedList;
	}
	
	@Override
	public SnsFeedVO readFeed(int snsFeedNo) {
		SnsFeedVO feed = snsDao.selectFeed(snsFeedNo);
		return feed;
	}
	
	@Override
	public List<AtchFileVO> readImageList() {
		List<AtchFileVO> fileList = snsFiledDao.selectAtch();
		return fileList;
	}
	
	@Override
	public List<SnsAnswerVO> readAnswerList(int snsFeedNo) {
		List<SnsAnswerVO> answerList = snsDao.selectAnswerList(snsFeedNo);
		return answerList;
	}
	
	@Override
	public int createFeed(SnsFeedVO feedVo) throws IOException {
		int chk = 0;
		chk = snsDao.insertFeed(feedVo);
		if(chk > 0) {
			// 파일 저장?
			saveAttatchList(feedVo);
			return chk;
		}else {
			// 인셉션 처리 들어갈 자리.
			return chk;
		}
	}

	@Override
	public int deleteFeed(Long snsFeedNo) {
		int chk = 0;
		int chk2 = 0;
		int result = 1;
		chk = snsDao.deleteFeed(snsFeedNo);
		chk2 = snsDao.deleteHashTag(snsFeedNo);
		if(chk > 0 && chk2 > 0) {
			return result + 1;
		}else {
			// 인셉션 처리 들어갈 자리.
			return result;
		}
	}

	@Override
	public int updateFeed(SnsFeedVO feedVo) {
		int chk = 0;
		chk = snsDao.updateFeed(feedVo);
		snsDao.updateHashTag(feedVo);
		return chk;
	}

	@Override
	public int createAnswer(SnsAnswerVO answerVo) {
		int chk = 0;
		chk = snsDao.insertAnswer(answerVo);
		return chk;
	}

	@Override
	public int updateAnswer(SnsAnswerVO answerVo) {
		int chk = 0;
		chk = snsDao.updateAnswer(answerVo);
		return chk;
	}

	@Override
	public int deleteAnswer(SnsAnswerVO answerVo) {
		int chk = 0;
		chk = snsDao.deleteAnswer(answerVo);
		return chk;
	}

	@Override
	public List<FollowVO> readUnFollowList(String userId) {
		List<FollowVO> list = snsDao.selectUnFollowList(userId);
		return list;
	}

	@Override
	public int createFollow(FollowVO followVo) {
		int chk = 0;
		chk = snsDao.insertFollow(followVo);
		return chk;
	}
	
	@Override
	public int readFollwingCount(String userId) {
		int count = 0;
		count = snsDao.selectFollowingCount(userId);
		return count;
	}

	@Override
	public int readFollwerCount(String userId) {
		int count = 0;
		count = snsDao.selectFollowerCount(userId);
		return count;
	}
	
	@Override
	public List<FollowVO> readFollowingListList(String userId) {
		List<FollowVO> list = snsDao.selectFollowingList(userId);
		return list;
	}

	@Override
	public List<FollowVO> readFollowerList(String userId) {
		List<FollowVO> list = snsDao.selectFollowerList(userId);
		return list;
	}
}
