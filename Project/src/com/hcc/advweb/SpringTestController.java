package com.hcc.advweb;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class SpringTestController {
	
	@Autowired
	private ClientService clientService;

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String viewClientDetails(ModelMap model) {
	    model.addAttribute("greetings", "This is BJ Exclusive Braids. "
	    		+ "Call Ms. B. @ <h1>832-483-8402</h1> for your edible hair styles at glance");
	    return "hello";
	}
	
	@RequestMapping(value = "/fine", method = RequestMethod.GET)
	public String viewClientDetails2(ModelMap model) {
		System.out.println("-----------Came inside my controller ----------");
	    model.addAttribute("greetingsFine", " We will make you pretty at affordable price!!!");
	    return "fine";
	}
	
/*	
	@RequestMapping(value = "/clientslist", method = RequestMethod.GET)
	public ModelAndView viewClientList() {
		//System.out.println("-----------Came inside my controller for picking up clients list ----------");
	    ArrayList<Client> clientsList = ClientsList.getClientsList();
	    
	    return new ModelAndView("clientslist","clientsList", clientsList);
	}
*/	
	@RequestMapping(value = "/getclientdetails", method = RequestMethod.GET)
	public ModelAndView getClientDetail(@RequestParam(name = "id") String clientId, ModelAndView modelView) {
		Client client = clientService.getClient(Integer.parseInt(clientId));
		modelView.addObject("clientDetails",client);
		modelView.setViewName("getclientdetails");
		return modelView;
		
	}
	/*
	@RequestMapping(value = "/getclientdetails", method = RequestMethod.GET)
	public ModelAndView getClientDetail(@RequestParam(name = "id") String clientId) {
		System.out.println("---------Here is my ID from the form text box -------"+clientId);
	    ArrayList<Client> clientsList = ClientsList.getClientsList();
	    Client thisClient = null;
	    for (Client client:clientsList) {
	    	if (client.getId() == Integer.parseInt(clientId)) {
	    		thisClient = client;
	    	}
	    }
	    return new ModelAndView("getclientdetails","clientDetails",thisClient);
	    
	}
	*/

	@RequestMapping(value = "/addnewclient2", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView addNewClient(@RequestParam(name = "id") String clientId,
			@RequestParam(name = "fname") String fName,
			@RequestParam(name = "lname") String lName
			) {
		System.out.println("---------Here is all the info for adding this client -------"+
			clientId + "," + fName + "," + lName );
		// Create a new student and add the new student to the list
		Client client = new Client(Integer.parseInt(clientId), fName, lName);

		// get the latest student list and set the model with the list
		ArrayList<Client> clientsList = ClientsList.addClient(client);
		
	    return new ModelAndView("clientslist","clientsList",clientsList);
	}
	
	
	
}
