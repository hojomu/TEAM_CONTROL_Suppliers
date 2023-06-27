package control.suppliers.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import control.suppliers.model.DeliveryListVO;
import control.suppliers.model.ELocationVO;
import control.suppliers.model.LoginVO;
import control.suppliers.model.TransportDataVO;
import control.suppliers.service.DeliveryListService;


@Controller
public class DeliveryListController {
	
	@Autowired
	DeliveryListService ds;
	
	// 배송 스케줄 캘린더로 이동
	@RequestMapping(value = "/delivery_calendar", method = RequestMethod.GET)
	public String delivery_calendar(HttpSession session, Model model) {
		LoginVO account = (LoginVO) session.getAttribute("account");
	    if(account == null || !account.getDept().equals("transport")) {
	    	return "redirect:/security";
	    } else {
	    	return "delivery_calendar";
	    }
	}
		
	// 배송 리스트 불러오기
	@GetMapping(value="/delivery_list")
	public String deliverylistTable (HttpSession session,Model model, DeliveryListVO data) {
		LoginVO account = (LoginVO) session.getAttribute("account");
	    if(account == null || !account.getDept().equals("transport")) {
	    	return "redirect:/security";
	    } else {
	    int employeeId  = account.getEmployeeId();
	    data.setEmployeeId(employeeId);
	    
		List<DeliveryListVO> resultList = ds.list(data);	
		
		Gson gson = new Gson();
		String resultListJson = gson.toJson(resultList);
		
		model.addAttribute("listJson", resultListJson);		
		model.addAttribute("list", resultList);
		
			return "delivery_list";
	    }
	}
	
	// 운반자 위치 확인 

	@PostMapping(value = "/transport_location") 
	public ResponseEntity<String>transport_location(@RequestBody TransportDataVO trandata) {

		System.out.println(trandata);
		
		ds.transport_location(trandata);
			return  new ResponseEntity<>("Success", HttpStatus.OK);

	}
		
}
