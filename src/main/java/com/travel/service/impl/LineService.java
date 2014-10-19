package com.travel.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.travel.dao.ILineDao;
import com.travel.model.LineInfo;
import com.travel.model.SearchCondition;
import com.travel.model.Station;
import com.travel.service.ILineService;

@Component
public class LineService implements ILineService {

	@Autowired
	private ILineDao lineDao;

	public List<LineInfo> getLines(SearchCondition condition) {
		return lineDao.getLines(condition);
	}

	public List<Station> getDepartStations(String from) {
		return lineDao.getDepartStations(from);
	}

}
