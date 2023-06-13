package control.suppliers.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	// 기본 헤더, 사이드화 확인 페이지로 이동
	@RequestMapping(value = "/headerSidebar", method = RequestMethod.GET)
	public String headerSidebar(Locale locale, Model model) {
		return "headerSidebar";
	}
	
	// 출하등록 header
	@RequestMapping(value = "/shipment_header", method = RequestMethod.GET)
	public String shipment_header(Locale locale, Model model) {
		return "shipment_header";
	}
	
	// 출하 조회
	@RequestMapping(value = "/shipment_table", method = RequestMethod.GET)
	public String shipment_table(Locale locale, Model model) {
		return "shipment_table";
	}
	
	// 출하 디테일
	@RequestMapping(value = "/shipment_detail", method = RequestMethod.GET)
	public String shipment_detail(Locale locale, Model model) {
		return "shipment_detail";
	}
	
	// 출하 등록
/*	@RequestMapping(value = "/shipment_order", method = RequestMethod.GET)
	public String shipment_order(Locale locale, Model model) {
		return "shipment_order";
	}*/
	
	// 배송 스케줄 캘린더로 이동
	@RequestMapping(value = "/delivery_calendar", method = RequestMethod.GET)
	public String delivery_calendar(Locale locale, Model model) {
		return "delivery_calendar";
	}
		
	// 배송 스케줄 캘린더로 이동
	@RequestMapping(value = "/delivery_list", method = RequestMethod.GET)
	public String delivery_list(Locale locale, Model model) {
		return "delivery_list";
	}
	
	// login 화면
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		return "login";
	}
	
	// 고객 관리
	@RequestMapping(value = "/customer", method = RequestMethod.GET)
	public String customer_input(Locale locale, Model model) {
		return "customer_input";
	}
		
}
