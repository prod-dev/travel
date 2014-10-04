package com.travel.service;

import java.util.List;

import com.travel.model.LineInfo;
import com.travel.model.Ticket;

public interface ITicketService {

	List<Ticket> getTickets();

	List<LineInfo> getLines();

}
