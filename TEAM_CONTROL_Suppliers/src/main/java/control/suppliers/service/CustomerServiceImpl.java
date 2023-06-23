package control.suppliers.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import control.suppliers.mapper.CustomerInputMapper;
import control.suppliers.model.CustomerVO;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	CustomerInputMapper cm;
	
	public void customerInput(CustomerVO customer) {
		cm.customerInput(customer);
	}
}
