package com.travel.dao.impl;

import java.util.List;

import org.springframework.stereotype.Component;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.travel.dao.ILineDao;
import com.travel.model.LineInfo;
import com.travel.model.SearchCondition;

@Component
public class LineDao implements ILineDao {

	public List<LineInfo> getLines(SearchCondition condition) {
		Gson gson = new Gson();
		List<LineInfo> lines = gson.fromJson(getLine(), new TypeToken<List<LineInfo>>() {
		}.getType());
		return lines;
	}

	public List<String> getDepartStations(String from) {
		Gson gson = new Gson();
		List<String> stations = gson.fromJson(getStations(), new TypeToken<List<String>>() {
		}.getType());
		return stations;
	}

	private String getLine() {
		String str = "[{lineNo:'12345',startTime:'12:00',arriveTime:'第二天12:00',fromStation:'沙井中心客运站',toStation:'南宁安吉站',carType:'豪华大巴',price:'180'},"
				+ "{lineNo:'23456',startTime:'13:00',arriveTime:'第二天13:00',fromStation:'沙井中心客运站',toStation:'南宁安吉站',carType:'普通大巴',price:'120'}]";
		return str;
	}

	private String getStations() {
		String str = "['沙井中心客运站','龙华汽车客运站','深圳福田客运站','龙岗长途客运站','龙岗坪地客运站','宝安汽车客运站']";
		return str;
	}

	public static void main(String[] args) {
		LineDao dao = new LineDao();
		for (String station : dao.getDepartStations("")) {
			System.out.println("====" + station);
		}

	}
}
