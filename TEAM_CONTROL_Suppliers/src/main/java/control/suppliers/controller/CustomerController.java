package control.suppliers.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import control.suppliers.model.CustomerVO;
import control.suppliers.service.CustomerService;

@Controller
public class CustomerController {

	@Autowired
	CustomerService cs;
	
	// 고객정보 입력
	@RequestMapping(value = "/CustomerInput", method = RequestMethod.GET)
	public String customerInput(CustomerVO customer) {
		cs.customerInput(customer);
		return "redirect:/customer";
	}	
	

}
