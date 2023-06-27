package control.suppliers.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import control.suppliers.model.LoginVO;
import control.suppliers.service.LoginService;

@Controller
public class LoginController {
	
	@Autowired
	LoginService ls;
	
	private final Logger log = LoggerFactory.getLogger(getClass());
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginManeger(HttpSession session, Model model, LoginVO login, HttpServletRequest request) {
		LoginVO member = ls.login(login);
		log.info("{}", member);
		
		if (member == null) {
			model.addAttribute("checkMessage","아이디나 비밀번호를 다시 확인해주세요");
			return "login";
		} else {
			session.setAttribute("account", member);
			  
			// 사용자 ID를 JavaScript 변수로 전달
	        model.addAttribute("account", member.getEmployeeId());
	        
			String dept = member.getDept();
			if(dept.equals("sales")) {
				return "redirect:/shipment_table";
			} else if(dept.equals("transport")) {
				return "redirect:/delivery_calendar";
			} else if(dept.equals("admin")) {
				return "redirect:/adminGraph";
			}
			
		}
		
		return "home";
	}
	
	@RequestMapping(value = "/security", method = RequestMethod.GET)
	public String security() {
		return "security";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session, HttpServletResponse response) {
		session.removeAttribute("account");
		
		// 캐시 제어
	    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
	    response.setHeader("Pragma", "no-cache"); // HTTP 1.0
	    response.setHeader("Expires", "0"); // Proxies
	    
		return "redirect:/login";
	}
	
	
}
