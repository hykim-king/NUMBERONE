package com.pcwk.ehr.news.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pcwk.ehr.cmn.DTO;
import com.pcwk.ehr.cmn.PLog;
import com.pcwk.ehr.cmn.Search;
import com.pcwk.ehr.mapper.NewsMapper;
import com.pcwk.ehr.news.domain.News;
@Service
public class NewsServiceImpl implements NewsService, PLog {
    
	@Autowired
	NewsMapper newsMapper;
	
	@Override
	public int doSave(News inVO) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public News doSelectOne(News inVO) throws SQLException {
		log.debug("1.param: "+inVO);
		News result =newsMapper.doSelectOne(inVO);
		return result;
	}

	@Override
	public List<News> doRetrieve(DTO search) throws SQLException {
		log.debug("1.param:"+search);
		List<News> newsList =newsMapper.doRetrieve(search);
		return newsList;
	}

	@Override
	public int doUpdate(News inVO) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int doDelete(News inVO) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	

}
