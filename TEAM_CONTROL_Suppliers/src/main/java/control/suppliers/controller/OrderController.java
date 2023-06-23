package control.suppliers.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import control.suppliers.model.CriteriaVO;
import control.suppliers.model.CustomerVO;
import control.suppliers.model.OrderVO;
import control.suppliers.model.OrderedProductDTO;
import control.suppliers.model.OrderedProductVO;
import control.suppliers.model.PageVO;
import control.suppliers.service.OrderService;

@Controller
public class OrderController {
	
	@Autowired
	OrderService os;
	
	// 출하 등록 페이지  
/*	@RequestMapping(value = "/shipment_order", method = RequestMethod.GET)
	public String shipment_order() {
		return "shipment_order";
	}*/
	
	// 출하 등록 페이지 전체(OrderVO,OrderedProductDTO) insert
	@RequestMapping(value = "/shipment_order", method = RequestMethod.POST)
	public String orderPost (OrderVO order) {
		System.out.println(order);
	    os.orderIn(order);
	    return "redirect:/shipment_order";
	}
	
	// customer 계약코드 조회 기능
	@RequestMapping(value = "/formcustomerbnt", method = RequestMethod.GET)
	public String order_customer (@RequestParam("customer_id") int customer_id, Model model) {
	    model.addAttribute("order_customer", os.memorder_customer(customer_id));
	    return "shipment_order";
	}

	// product 상품이름만 리스트 불러오기, 검색기능
	@RequestMapping(value = {"/shipment_order", "/list"}, method = {RequestMethod.GET})
	public String list (Model model, CriteriaVO cri) {
		model.addAttribute("list", os.list(cri));
		int total=os.total(cri);
		model.addAttribute("paging", new PageVO(cri, total));
		return "shipment_order";
	}

	// product 상품이름으로 상품정보 불러오기
	@RequestMapping(value = "/productDetail", method = RequestMethod.GET)
	public String productDetail (Model model, String name) {
		model.addAttribute("productDetail", os.productDetail(name));
		os.productDetail(name);
		return "shipment_order";
	}

}
