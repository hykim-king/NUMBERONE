package com.pcwk.ehr.mapper;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.pcwk.ehr.cmn.WorkDiv;
import com.pcwk.ehr.disasterMsg.domain.DisasterMsg;
import com.pcwk.ehr.location.domain.Location;
import com.pcwk.ehr.statisticsCondition.domain.StatisticsCondition;

@Mapper
public interface DisasterMsgMapper extends WorkDiv<DisasterMsg> {
	
	/**
	 *  //하위 지역 ->하위지역, 예를들어 서울시 강남구 삼성동의 통계 를 조회할때 서울시 강남구 삼성동, 서울시 강남구 전체, 서울시 전체, 나라 전체 의 문자를 전부 조회해준다.
	 * @param 통계 조건(기간, 지역)
	 * @return 재난 유형, 개수를 맵으로 리턴해준다.
	 * @throws SQLException
	 */
	public List<Map<String,Object>> disasterTypeStatisticsUpward(StatisticsCondition condition) throws SQLException;

	
	/**
	 * //상위 지역 ->하위지역, 예를들어 서울시의 통계 를 조회할때 서울시, 서울시에 속한 모든 구와 동의 통계를 중복을 제거하고 가져온다 
	 * @param 통계 조건(기간, 지역)
	 * @return재난 유형, 개수를 맵으로 리턴해준다.
	 * @throws SQLException
	 */
	public List<Map<String,Object>> disasterTypeStatisticsDownward(StatisticsCondition condition) throws SQLException;

	public String isNewMessageExist() throws SQLException;
	
}
