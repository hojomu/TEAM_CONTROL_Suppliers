package control.suppliers.controller;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {
		
		@Value("${KakaoMap-Api-Key}")
		private String kakaoMapApiKey;
		
		// 그래프 페이지로 이동
		@RequestMapping(value = "/adminGraph", method = RequestMethod.GET)
		public String adminGraph(Locale locale, Model model) {
			return "adminGraph";
		}
		
		// 테이블 페이지로 이동
		@RequestMapping(value = "/adminTable", method = RequestMethod.GET)
		public String adminTable(Locale locale, Model model) {
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
