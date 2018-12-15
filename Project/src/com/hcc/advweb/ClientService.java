package com.hcc.advweb;

import java.util.ArrayList;

public interface ClientService {

	
	public void addClient(Client client);
	
	public Client getClient(int Id);
	
	public ArrayList<Client> getClientsList();
	
	public void updateClient(Client client);
	
	public void deleteClient(int Id);
}
