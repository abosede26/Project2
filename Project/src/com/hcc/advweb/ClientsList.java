package com.hcc.advweb;

import java.util.ArrayList;

public class ClientsList {

	private static ArrayList<Client> clientsList;
	
	public static ArrayList<Client> getClientsList() {
		if ((clientsList == null) || (clientsList.size() == 0)) {
			clientsList = new ArrayList<Client>();
			clientsList.add(new Client(1,"Mj","Loseph"));
			clientsList.add(new Client(2,"Jade","Mozales"));
			clientsList.add(new Client(3,"Bisb","Smith"));
			clientsList.add(new Client(4,"Adrian","Shah"));
			clientsList.add(new Client(5,"Kelly","Branco"));
		}
		System.out.println("Client List ---->"+clientsList);
		return clientsList;
	}
	public static void setClientsList(ArrayList<Client> clientsList) {
		clientsList = clientsList;
	}

	public static ArrayList<Client> addClient(Client client) {
		getClientsList().add(client);
		return clientsList;
	}
	

}
