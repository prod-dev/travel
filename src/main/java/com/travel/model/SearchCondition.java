package com.travel.model;

public class SearchCondition {

	private boolean isSingle;
	private boolean isReturn;
	private String from;
	private String to;
	private String departDate;
	private String returnDate;

	public boolean isSingle() {
		return isSingle;
	}

	public void setSingle(boolean isSingle) {
		this.isSingle = isSingle;
	}

	public boolean isReturn() {
		return isReturn;
	}

	public void setReturn(boolean isReturn) {
		this.isReturn = isReturn;
	}

	public String getFrom() {
		return from;
	}

	public void setFrom(String from) {
		this.from = from;
	}

	public String getTo() {
		return to;
	}

	public void setTo(String to) {
		this.to = to;
	}

	public String getDepartDate() {
		return departDate;
	}

	public void setDepartDate(String departDate) {
		this.departDate = departDate;
	}

	public String getReturnDate() {
		return returnDate;
	}

	public void setReturnDate(String returnDate) {
		this.returnDate = returnDate;
	}

	public String toString() {
		return "{isSingle:" + isSingle + ", isReturn:" + isReturn + ", from:" + from + ", to:" + to + ", departDate:" + ", returnDate" + returnDate + "}";

	}
}
