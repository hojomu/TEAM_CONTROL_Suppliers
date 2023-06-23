package control.suppliers.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;

import control.suppliers.model.AdminGraphVO;
import control.suppliers.model.AdminOrderVO;
import control.suppliers.model.DatePerOrderVO;
import control.suppliers.model.DpoVO;
import control.suppliers.model.LoginVO;
import control.suppliers.model.OrderedProductVO;
import control.suppliers.model.ProductStockVO;
import control.suppliers.model.TransportDataVO;
import control.suppliers.service.AdminService;

@Controller
public class AdminController {
	
		@Autowired
		AdminService as;
		
		@Value("${KakaoMap-Api-Key}")
		private String kakaoMapApiKey;
		
		private final Logger log = LoggerFactory.getLogger(getClass());
		
		// 그래프 페이지로 이동
		@RequestMapping(value = "/adminGraph", method = RequestMethod.GET)
		public String adminGraph(HttpSession session, Model model) {
			log.info("안녕");
		    LoginVO account = (LoginVO) session.getAttribute("account");
		    if(account == null || !account.getDept().equals("admin")) {
		    	return "redirect:/security";
		    } else {
			AdminGraphVO graphData = as.getGraph();
			DpoVO dpoData = as.getDpo();
			ArrayList<ProductStockVO> stockData = as.getStock();
			
			Gson gson = new Gson();
			/*String graphDataJson = gson.toJson(graphData);*/
			String dpoDataJson = gson.toJson(dpoData);
			String stockDataJson = gson.toJson(stockData);
			// 그레프 페이지
		    model.addAttribute("graphData", graphData);
		    model.addAttribute("dpoData", dpoDataJson);
		    model.addAttribute("stockData", stockDataJson);
		    
		    log.info("{}",graphData);
		
			return "adminGraph";
		    }
		}
		
		// 출하 계획표 불러오기
		@RequestMapping(value="/adminTable", method = RequestMethod.GET)
		public String adminTable (HttpSession session, Model model,AdminOrderVO data) {
			LoginVO account = (LoginVO) session.getAttribute("account");
		    if(account == null || !account.getDept().equals("admin")) {
		    	return "redirect:/security";
		    } else {
			List<AdminOrderVO> resultList = as.list(data);
			
			Gson gson = new Gson();
			String resultListJson = gson.toJson(resultList);
			
			model.addAttribute("listJson", resultListJson);
			
			model.addAttribute("list", resultList);
			
			return "adminTable";
		    }
		}
		
		// 관리자 운반 관리 페이지로 이동
		@RequestMapping(value = "/adminCarrier", method = RequestMethod.GET)
		public String adminCarrier(HttpSession session, Locale locale, Model model) {
			LoginVO account = (LoginVO) session.getAttribute("account");
		    if(account == null || !account.getDept().equals("admin")) {
		    	return "redirect:/security";
		    } else {
			model.addAttribute("kakaoMapApiKey",kakaoMapApiKey);
			model.addAttribute("list",as.transportList());
			return "adminCarrier";
		    }
		}
		
		// 실시간 랜더링 데이터 호출
		@RequestMapping(value = "/getCarrierDatas", method = RequestMethod.GET)
		public ResponseEntity<ArrayList<TransportDataVO>> getCarrierDatas(Model model){
			return new ResponseEntity<>(as.getCarrierDatas(),HttpStatus.OK);
		}
		
		// 주문 상세보기 페이지 이동
		@RequestMapping(value = "/detail", method = RequestMethod.GET)
		public String orderDetail(HttpSession session, Model model, AdminOrderVO data) {
			LoginVO account = (LoginVO) session.getAttribute("account");
		    if(account == null || !account.getDept().equals("admin")) {
		    	return "redirect:/security";
		    } else {
			ArrayList<AdminOrderVO> orderDetail = as.list(data);
			List<OrderedProductVO> product = orderDetail.get(0).getOrderedProduct();
			model.addAttribute("orderDetail",orderDetail);
			model.addAttribute("product",product);
			
			return "adminDetail";
		    }
		}
		
		// 주문 취소
		@RequestMapping(value = "/cancelOrder", method = RequestMethod.POST)
		public String cancelOrder(AdminOrderVO data) {
			int result = as.cancelOrder(data);
			
			return result == 1 ? "redirect:/adminTable"
					: "redirect:/detail";
		}
		
		// 재고량 자세히 보기
		@RequestMapping(value = "/stockDetail", method = RequestMethod.GET)
		public String stockDetail(HttpSession session, Model model) {
			LoginVO account = (LoginVO) session.getAttribute("account");
		    if(account == null || !account.getDept().equals("admin")) {
		    	return "redirect:/security";
		    } else {
		    model.addAttribute("stockData", as.getStock());
		    
			return "stockDetail";
		    }
		}
		
}





