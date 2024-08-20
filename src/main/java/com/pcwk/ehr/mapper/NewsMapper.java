package com.pcwk.ehr.mapper;


import org.apache.ibatis.annotations.Mapper;

import com.pcwk.ehr.cmn.WorkDiv;
import com.pcwk.ehr.news.domain.News;

@Mapper
public interface NewsMapper extends WorkDiv<News> {
	

}
