package com.hcc.advweb;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

@RestController
@RequestMapping
public class ClientController {

	@Autowired
	private ClientService clientService;
	
	public ClientController() {
		// TODO Auto-generated constructor stub
	}
	/*
	@RequestMapping(value="/clientslist", method= RequestMethod.GET)
	public ModelAndView getClientsList(ModelAndView model) {
		ArrayList<Client> clientsList = clientService.getClientsList();
		model.addObject("clientsList",clientsList);
		model.setViewName("clientslist");
		return model;
	}
	*/
	@CrossOrigin(origins={"http://localhost:8081"},allowCredentials="true",exposedHeaders="Access-Control-Allow-Origin",allowedHeaders="*",maxAge=3600)
	@RequestMapping(value="/clientslist", method= RequestMethod.GET)
	public ModelAndView getClientsList(ModelAndView model) {
		ArrayList<Client> clientsList = clientService.getClientsList();
		model.addObject("clientsList",clientsList);
		model.setViewName("clientslist");
		return model;
	}

	/*
	@RequestMapping(value = "/clientslist/{id}", method = RequestMethod.GET)
    public ResponseEntity<Client> getClient(@PathVariable("id") int id) {
       Client client = clientService.getClient(id);
       return ResponseEntity.ok().body(client);
    }
	 
	@RequestMapping(value = "/clientslist", method = RequestMethod.GET)
    public ResponseEntity<Student> getClient(@RequestParam(value="id")  int id) {
       Client client = clientService.getClient(id);
       return ResponseEntity.ok().body(client);
    }
*/
	@RequestMapping(value="/newspringclient",method=RequestMethod.GET)
	public ModelAndView newSpringClient(ModelAndView modelView) {
		Client client = new Client();
		modelView.addObject("client",client);
		modelView.setViewName("addnewclient");
		return modelView;
	}
	
	@RequestMapping(value="/deletespringclient",method=RequestMethod.GET)
	public ModelAndView deleteClient(@RequestParam(name = "helloID") String clientId, ModelAndView modelView) {
		clientService.deleteClient(Integer.parseInt(clientId));
		modelView.setViewName("fine");
		return modelView;
		
	}
	/*
	@RequestMapping(value="/updatespringclient",method=RequestMethod.GET)
	public ModelAndView updateSpringClient(ModelAndView modelView) {
		Client client = new Client();
		modelView.addObject("client",client);
		modelView.setViewName("updatespringclient");
		return modelView;
	}
	
	/*
	@RequestMapping(value="/updatespringclient", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView updateSpringClient(@ModelAttribute Client client) {
		System.out.println("----------");
		if (client.getId() == 0) {
			clientService.updateClient(client);
		} else {
			System.out.println("Unsuccesful Update");
		}
		ArrayList<Client> clientsList = clientService.getClientsList();

		return new ModelAndView("clientslist","clientsList",clientsList);
	}
	*/
	
	@RequestMapping(value="/addspringclient", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView addSpringClient(@ModelAttribute Client client,@RequestParam(name = "id") String clientId) {
		System.out.println("----------");
		if (Integer.parseInt(clientId)== 0) {
			clientService.addClient(client);
		} else {
			clientService.updateClient(client);
		}
		ArrayList<Client> clientsList = clientService.getClientsList();

		return new ModelAndView("clientslist","clientsList",clientsList);
	}
	
	
}
