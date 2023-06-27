package control.suppliers.controller;


import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import control.suppliers.model.CalendarVO;
import control.suppliers.model.LoginVO;
import control.suppliers.service.CalendarService;

@Controller

@RequestMapping("/calendar")
public class CalendarController {

		private final Logger log = LoggerFactory.getLogger(CalendarController.class);
		
		private final CalendarService calendarService;
		
		public CalendarController(CalendarService calendarService) {
			this.calendarService = calendarService;
		}
	
		@RequestMapping(value="/event", method = RequestMethod.GET)
		@ResponseBody
		public String event(HttpSession session) {
	
			LoginVO account = (LoginVO) session.getAttribute("account");
		    int employeeId = account.getEmployeeId();
		    
		    List<CalendarVO> list = calendarService.getEventsByEmployeeId(employeeId);
			/*System.out.println(list);*/
			
			JSONObject jsonObj = new JSONObject();
			JSONArray jsonArr = new JSONArray();
			
			   for (CalendarVO event : list) {
			        HashMap<String, Object> hash = new HashMap<String, Object>();
			        hash.put("title", event.getHospital());
			        hash.put("start", event.getDelivery_date());
			        jsonObj = new JSONObject(hash);
			        jsonArr.add(jsonObj);
			    }
			    
			    return jsonArr.toString();

		}

	}






