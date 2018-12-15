package com.hcc.advweb;

import java.io.IOException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.hibernate.SessionFactory;

@Repository
public class ClientDAOImpl implements ClientDAO {
	
	private static FileConnection fileConnection = new FileConnection();


	@Override
	public void addClient(Client client) {
		// TODO Auto-generated method stub

	}

	@Override
	public ArrayList<Client> getClientsList() {
		ArrayList<Client> arrLstNewProduct = new ArrayList<Client>();
		Client productObj;

		ArrayList<Client> arrLstProduct;
		try {
			arrLstProduct = fileConnection.readingAllProduct();
			for(int i = 0; i < arrLstProduct.size(); i++){

				productObj = arrLstProduct.get(i);
				arrLstNewProduct.add(productObj);

			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}



		return arrLstNewProduct;
	}

	@Override
	public Client getClient(int Id) {
		// TODO Auto-generated method stub
		Client product = new Client();

		ArrayList<Client> arrLstProduct;
		try {
			arrLstProduct = fileConnection.readingAllProduct();
			for(int i = 0 ; i < arrLstProduct.size(); i++){
				product = arrLstProduct.get(i);
				if(product.getId() == Id){
					return product;
				}
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}



		return product;

	}

	@Override
	public void updateClient(Client client) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteClient(int Id) {
		// TODO Auto-generated method stub

	}
	//@Autowired
	//private SessionFactory sessionFactory;
	
	//public ClientDAOImpl() {
		// TODO Auto-generated constructor stub
	//}

	//@Override
	//public void addClient(Client client) {
	//	sessionFactory.getCurrentSession().saveOrUpdate(client);
		// TODO Auto-generated method stub

	//}

	//@Override
	//public ArrayList<Client> getClientsList() {
	//	ArrayList<Client> clientsList = 
	//			(ArrayList<Client>)sessionFactory.
	//			getCurrentSession().createQuery("FROM Client").
	//			list();
		//return clientsList;
	//}

	//@Override
	//public Client getClient(int Id) {
	//	Client client = (Client)sessionFactory.getCurrentSession().get(Client.class, Id);
	//	return client;
	//}

	//@Override
	//public void updateClient(Client client) {
	//	sessionFactory.getCurrentSession().update(client);
	//}

	//@Override
	//public void deleteClient(int Id)//{
	//	Client client = (Client)sessionFactory.getCurrentSession().get(Client.class, Id);
	//	sessionFactory.getCurrentSession().delete(client);
	/////}
	
	

}
