package com.travel.dao;

import java.util.List;

import com.travel.model.LineInfo;
import com.travel.model.SearchCondition;

public interface ILineDao {

	List<LineInfo> getLines(SearchCondition condition);

	List<String> getDepartStations(String from);

}
