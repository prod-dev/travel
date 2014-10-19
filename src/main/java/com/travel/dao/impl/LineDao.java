package com.travel.dao.impl;

import java.util.List;

import org.springframework.stereotype.Component;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.travel.dao.ILineDao;
import com.travel.dao.util.Http;
import com.travel.model.LineInfo;
import com.travel.model.SearchCondition;
import com.travel.model.Station;

@Component
public class LineDao implements ILineDao {

	public List<LineInfo> getLines(SearchCondition condition) {
		Gson gson = new Gson();
		List<LineInfo> lines = gson.fromJson(getLine(),
				new TypeToken<List<LineInfo>>() {
				}.getType());
		return lines;
	}

	public List<Station> getDepartStations(String from) {
		Gson gson = new Gson();
		String content = Http.requestGet(
				"http://54.68.153.144:9092/api/stationinfo?list", null);
		System.out.println(content);
		List<Station> stations = gson.fromJson(content,
				new TypeToken<List<Station>>() {
				}.getType());
		return stations;
	}

	private String getLine() {
		String str = "[{lineNo:'12345',startTime:'12:00',arriveTime:'第二天12:00',fromStation:'沙井中心客运站',toStation:'南宁安吉站',carType:'豪华大巴',price:'180'},"
				+ "{lineNo:'23456',startTime:'13:00',arriveTime:'第二天13:00',fromStation:'沙井中心客运站',toStation:'南宁安吉站',carType:'普通大巴',price:'120'}]";
		return str;
	}

	public static void main(String[] args) {
		LineDao dao = new LineDao();
		for (Station station : dao.getDepartStations("")) {
			System.out.println(station.getId() + "====" + station.getName());
		}

	}
}
