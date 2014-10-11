package com.travel.service;

import java.util.List;

import com.travel.model.LineInfo;
import com.travel.model.SearchCondition;

public interface ILineService {
	List<LineInfo> getLines(SearchCondition condition);

	List<String> getDepartStations(String from);
}
