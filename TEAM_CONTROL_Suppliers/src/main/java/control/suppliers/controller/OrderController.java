package control.suppliers.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import control.suppliers.model.CriteriaVO;
import control.suppliers.model.PageVO;
import control.suppliers.service.OrderService;

@Controller
public class OrderController {
	
	@Autowired
	OrderService os;
	
	// 출하 등록
	@RequestMapping(value = "/shipment_order", method = RequestMethod.GET)
	public String shipment_order(Locale locale, Model model) {
		return "shipment_order";
	}
	
	// customer 계약자 불러오기   
	@RequestMapping(value = "/shipment_order", method = RequestMethod.POST)
	public String order_customer (@RequestParam("customer_id") int customer_id, Model model) {
	    model.addAttribute("order_customer", os.memorder_customer(customer_id));
	    return "shipment_order";
	}
	
/*	// product 상품이름 불러오기, 검색기능
	@RequestMapping(value = "/shipment_order", method = RequestMethod.GET)
	public String list (Model model, CriteriaVO cri) {
		model.addAttribute("list", os.list(cri));
		int total=os.total(cri);
		model.addAttribute("paging", new PageVO(cri, total));
		return "shipment_order";
	}
	
	// product 상품 상세 불러오기
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String detail (Model model, String name) {
		model.addAttribute("detail", os.detail(name));
		os.detail(name);
		return "shipment_order";
	}*/
	
	
	
	// product 상품이름 불러오기, 검색기능
/*	@RequestMapping(value="/shipment_order", method = RequestMethod.GET)
	public String product_list(Model model, CriteriaVO cri, HttpServletRequest request, HttpSession session) {
		System.out.println(cri);
		model.addAttribute("list", os.list(cri));		
		// 페이지 총 수 불러오기
		int total = os.total(cri);
		System.out.println(cri);
		request.setAttribute("total", total);
		System.out.println(total);
		// 페이지네이션 데이터 불러오기
		model.addAttribute("paging", new PageVO(cri, total));
		return "shipment_order";
	}*/
	
	
	//======================================================================
	// shipment_table 리스트
		@RequestMapping(value = "/shipment_table", method = RequestMethod.GET)
		public String list (Model model, CriteriaVO cri) {
			model.addAttribute("list", os.list(cri));
			int total=os.total(cri);
			model.addAttribute("paging", new PageVO(cri, total));
			return "shipment_table";
		}
	
	
	
}
