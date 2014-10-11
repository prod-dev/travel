package com.travel.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.travel.dao.ITicketDao;
import com.travel.model.Ticket;
import com.travel.service.ITicketService;

@Component
public class TicketService implements ITicketService {

	@Autowired
	private ITicketDao ticketDao;

	public List<Ticket> getTickets() {
		return ticketDao.getTickets();
	}
}
