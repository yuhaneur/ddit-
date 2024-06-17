package kr.or.ddit.item.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.vo.ItemPresetVO;

@Mapper
public interface ItemPresetDAO {

	/**
	 * 프리셋 조회
	 * @param userId
	 * @return 존재하지 않으면, list.size()==0
	 */
	public List<ItemPresetVO> selectItemPresetList(@Param("userId") String userId);
	
	/**
	 * 프리셋 적용 Y로 수정
	 * @param userId
	 * @param presetCode
	 * @return
	 */
	public int updateItemPresetY(@Param("userId") String userId, @Param("presetCode") String presetCode);
	
	/**
	 * 프리셋 적용 N으로 수정 
	 * @param userId
	 * @param presetCode
	 * @return
	 */
	public int updateItemPresetN(@Param("userId") String userId, @Param("presetCode") String presetCode);
	

}
