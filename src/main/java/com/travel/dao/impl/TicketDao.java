package com.travel.dao.impl;

import java.util.List;

import org.springframework.stereotype.Component;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.travel.dao.ITicketDao;
import com.travel.model.Ticket;

@Component
public class TicketDao implements ITicketDao {

	private String getT() {
		// Http.requestGet("", null); // get from service
		return "[{seatNo:'1',price:'12'},{seatNo:'2',price:'12'}]";
	}

	public List<Ticket> getTickets() {
		Gson gson = new Gson();
		List<Ticket> tickets = gson.fromJson(getT(), new TypeToken<List<Ticket>>() {
		}.getType());
		return tickets;
	}

}
