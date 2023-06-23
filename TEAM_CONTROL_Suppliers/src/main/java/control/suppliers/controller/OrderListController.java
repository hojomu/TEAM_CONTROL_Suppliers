package control.suppliers.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import control.suppliers.model.CriteriaVO;
import control.suppliers.model.PageVO;
import control.suppliers.service.OrderListService;

@Controller
public class OrderListController {
	
	@Autowired
	OrderListService ols;
	
	// shipment_table 리스트
		@RequestMapping(value = "/shipment_table", method = RequestMethod.GET)
		public String OrderList (Model model, CriteriaVO cri) {
			model.addAttribute("OrderList", ols.OrderList(cri));
			int total=ols.total(cri);
			model.addAttribute("paging", new PageVO(cri, total));
			return "shipment_table";
		}

}
