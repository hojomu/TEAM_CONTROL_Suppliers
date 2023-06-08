package control.suppliers.controller;

import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import control.suppliers.model.AdminOrderVO;
import control.suppliers.model.CriteriaVO;
import control.suppliers.model.PageVO;
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
		public String adminGraph(Locale locale, Model model) {
			return "adminGraph";
		}
		
		// 출하 계획표 불러오기
		@RequestMapping(value="/adminTable", method = RequestMethod.GET)
		public String adminTable (Model model, CriteriaVO cri) {
			
			List<AdminOrderVO> resultList = as.list(cri);
			log.info("as.list(cri) 결과: {}", resultList);
			
			model.addAttribute("list", resultList);
			
			int total=as.total(cri);
			
			model.addAttribute("paging", new PageVO(cri, total));
			return "adminTable";
		}
		
		// 관리자 운반 관리 페이지로 이동
		@RequestMapping(value = "/adminCarrier", method = RequestMethod.GET)
		public String adminCarrier(Locale locale, Model model) {
			model.addAttribute("kakaoMapApiKey",kakaoMapApiKey);
			System.out.println(kakaoMapApiKey);
			return "adminCarrier";
		}
		
		
}
