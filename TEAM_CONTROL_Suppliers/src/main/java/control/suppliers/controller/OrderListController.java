package control.suppliers.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;

import control.suppliers.model.AdminOrderVO;
import control.suppliers.model.CriteriaVO;
import control.suppliers.model.LoginVO;
import control.suppliers.model.OrderedProductVO;
import control.suppliers.model.PageVO;
import control.suppliers.service.AdminService;
import control.suppliers.service.OrderListService;

@Controller
public class OrderListController {
	
	@Autowired
	OrderListService ols;
	
		// shipment_table 리스트
		@RequestMapping(value = "/shipment_table", method = RequestMethod.GET)
		public String OrderList (HttpSession session, Model model, AdminOrderVO data) {
			LoginVO account = (LoginVO) session.getAttribute("account");
			if(account == null || !account.getDept().equals("sales")) {
				return "redirect:/security";
			} else {
			ArrayList<AdminOrderVO> resultOrderList = ols.OrderList(data);	
			Gson gson = new Gson();
			String resultOrderListJson = gson.toJson(resultOrderList);
			model.addAttribute("OrderListJson", resultOrderListJson);
			model.addAttribute("OrderList", resultOrderList);
			return "shipment_table";
			}
		}
		
		// shipment_detail 상세정보
		@RequestMapping(value = "/OrderDetail", method = RequestMethod.GET)
		public String OrderDetail(HttpSession session, Model model, AdminOrderVO data) {
			LoginVO account = (LoginVO) session.getAttribute("account");
		    if(account == null || !account.getDept().equals("sales")) {
		    	return "redirect:/security";
		    } else {
			ArrayList<AdminOrderVO> OrderDetail = ols.OrderList(data);
			List<OrderedProductVO> product = OrderDetail.get(0).getOrderedProduct();
			model.addAttribute("OrderDetail",OrderDetail);
			model.addAttribute("product",product);
			return "shipment_detail";
		    }
		}
		
		// 출하 디테일
		@RequestMapping(value = "/orderPopup", method = RequestMethod.GET)
		public String orderpopup(Locale locale, Model model) {
			return "orderPopup";
		}
		
		@RequestMapping(value = "/PopupDetail", method = RequestMethod.GET)
		public String PopupDetail(HttpSession session, Model model, AdminOrderVO data) {
			LoginVO account = (LoginVO) session.getAttribute("account");
		    if(account == null || !account.getDept().equals("sales")) {
		    	return "redirect:/security";
		    } else {
			ArrayList<AdminOrderVO> PopupDetail = ols.OrderList(data);
			List<OrderedProductVO> product = PopupDetail.get(0).getOrderedProduct();
			model.addAttribute("PopupDetail",PopupDetail);
			model.addAttribute("product",product);
			return "orderPopup";
		    }
		}
		


		

}
