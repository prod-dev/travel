package com.travel.service;

import java.util.List;

import com.travel.model.LineInfo;
import com.travel.model.SearchCondition;
import com.travel.model.Station;

public interface ILineService {
	List<LineInfo> getLines(SearchCondition condition);

	List<Station> getDepartStations(String from);
}
