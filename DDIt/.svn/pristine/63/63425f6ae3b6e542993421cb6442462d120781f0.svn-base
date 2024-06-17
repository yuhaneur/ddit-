package kr.or.ddit.item.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.vo.ItemPresetDetailVO;

@Mapper
public interface ItemPresetDetailDAO {
	
	/**
	 * 프리셋 디테일 아이템 등록
	 * @param userId, itemCode, detailNo
	 * @return 등록된 레코드 수
	 */
	public int updateItemPresetDetail(@Param("userId") String userId, @Param("itemCode") String itemCode, @Param("detailNo") String detailNo);
	 
	
	/**
	 * 아이템프리셋 상세조회
	 * @param userId
	 * @return 존재하지 않으면, list.size()==0
	 */
	public List<ItemPresetDetailVO> selectItemPresetDetail(@Param("userId") String userId);
	
	
	/**
	 * 프리셋 디테일 아이템 램덤등록
	 * @param userId,preset
	 * @return 수정된 레코드 수
	 */
	public int updateItemPresetDetailRandom(@Param("userId") String userId, ItemPresetDetailVO preset);
	
	
	/**
	 * 프리셋 디테일 아이템 전체삭제
	 * @param presetCode
	 * @return 삭제된 레코드 수
	 */
	public int deleteItemPresetDetail(@Param("presetCode") String presetCode);
	
	/**
	 * 프리셋 디테일 아이템 삭제
	 * @param presetCode, itemCode
	 * @return 삭제된 레코드 수
	 */
	public int deleteItemPresetDetailOne(@Param("presetCode") String presetCode, @Param("itemCode") String itemCode);
	

	
}
