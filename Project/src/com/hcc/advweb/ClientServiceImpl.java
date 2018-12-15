package com.hcc.advweb;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ClientServiceImpl implements ClientService {

	@Autowired
	private ClientDAO clientDAO;
	
	public ClientServiceImpl() {
		// TODO Auto-generated constructor stub
	}

	@Override
	@Transactional
	public void addClient(Client client) {
		clientDAO.addClient(client);		
	}
	
	
	@Override
	@Transactional
	public ArrayList<Client> getClientsList() {
		return clientDAO.getClientsList();
	}

	@Override
	@Transactional
	public Client getClient(int Id) {
		return clientDAO.getClient(Id);
	}

	@Override
	@Transactional
	public void updateClient(Client client) {
		clientDAO.updateClient(client);
	}

	@Override
	@Transactional
	public void deleteClient(int Id) {
		clientDAO.deleteClient(Id);
	}

	

}
