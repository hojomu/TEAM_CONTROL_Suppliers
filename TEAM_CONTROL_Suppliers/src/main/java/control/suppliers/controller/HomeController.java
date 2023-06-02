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
	
	// 기본 헤더, 사이드화 확인 페이지로 이동
	@RequestMapping(value = "/shipment_header", method = RequestMethod.GET)
	public String shipment_header(Locale locale, Model model) {
		return "shipment_header";
	}
	
	// 기본 헤더, 사이드화 확인 페이지로 이동
	@RequestMapping(value = "/shipment_table", method = RequestMethod.GET)
	public String shipment_table(Locale locale, Model model) {
		return "shipment_table";
	}
	
	// 기본 헤더, 사이드화 확인 페이지로 이동
	@RequestMapping(value = "/shipment_order", method = RequestMethod.GET)
	public String shipment_order(Locale locale, Model model) {
		return "shipment_order";
	}
	
}
