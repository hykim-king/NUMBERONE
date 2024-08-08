package com.pcwk.ehr.mapper;

import java.sql.SQLException;

import org.apache.ibatis.annotations.Mapper;

import com.pcwk.ehr.cmn.WorkDiv;
import com.pcwk.ehr.messageArea.domain.MessageArea;

@Mapper
public interface MessageAreaMapper extends WorkDiv<MessageArea> {
	
	public String getMessageAreas (int messageArea) throws SQLException;

}
