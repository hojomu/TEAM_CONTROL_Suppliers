package control.suppliers.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

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
import control.suppliers.model.CriteriaVO;
import control.suppliers.model.DatePerOrderVO;
import control.suppliers.model.PageVO;
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
		public String adminGraph(Locale locale, Model model, AdminGraphVO adm) {
		    
			AdminGraphVO graphData = as.getGraph(adm);
			ArrayList<DatePerOrderVO> dpoData = as.getDpo(adm);
			ArrayList<ProductStockVO> stockData = as.getStock();
			log.info("adm: {} ",adm);
			
			Gson gson = new Gson();
			String dpoDataJson = gson.toJson(dpoData);
			String stockDataJson = gson.toJson(stockData);
			// 그레프 페이지
		    model.addAttribute("graphData", graphData);
		    model.addAttribute("dpoData", dpoDataJson);
		    model.addAttribute("stockData", stockDataJson);
		    model.addAttribute("adm", adm);
		
			return "adminGraph";
		}
		
		// 출하 계획표 불러오기
		@RequestMapping(value="/adminTable", method = RequestMethod.GET)
		public String adminTable (Model model, CriteriaVO cri) {
			
			List<AdminOrderVO> resultList = as.list(cri);
			//log.info("as.list(cri) 결과: {}", resultList);
			
			Gson gson = new Gson();
			String resultListJson = gson.toJson(resultList);
			//log.info("resultListJson: {}", resultListJson);
			
			model.addAttribute("listJson", resultListJson);
			
			model.addAttribute("list", resultList);
			
			int total=as.total(cri);
			
			model.addAttribute("paging", new PageVO(cri, total));
			
			return "adminTable";
		}
		
		// 관리자 운반 관리 페이지로 이동
		@RequestMapping(value = "/adminCarrier", method = RequestMethod.GET)
		public String adminCarrier(Locale locale, Model model) {
			model.addAttribute("kakaoMapApiKey",kakaoMapApiKey);
			model.addAttribute("list",as.transportList());
			return "adminCarrier";
		}
		
		// 실시간 랜더링 데이터 호출
		@RequestMapping(value = "/getCarrierDatas", method = RequestMethod.GET)
		public ResponseEntity<ArrayList<TransportDataVO>> getCarrierDatas(Model model){
			return new ResponseEntity<>(as.getCarrierDatas(),HttpStatus.OK);
		}
		
		// 주문 상세보기 페이지 이동
		@RequestMapping(value = "/detail", method = RequestMethod.GET)
		public String orderDetail(Model model) {
			
			return "adminDetail";
		}
		
		
		
}





