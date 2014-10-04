package com.travel.dao;

import java.util.List;

import com.travel.model.LineInfo;
import com.travel.model.Ticket;

public interface ITicketDao {

	List<Ticket> getTickets();

	List<LineInfo> getLines();

}
