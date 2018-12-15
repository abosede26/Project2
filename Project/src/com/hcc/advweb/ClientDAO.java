package com.hcc.advweb;

import java.util.ArrayList;

public interface ClientDAO {

	public void addClient(Client client);
	
	public ArrayList<Client> getClientsList();
	
	public Client getClient(int Id);
	
	public void updateClient(Client client);
	
	public void deleteClient(int Id);
	
}
