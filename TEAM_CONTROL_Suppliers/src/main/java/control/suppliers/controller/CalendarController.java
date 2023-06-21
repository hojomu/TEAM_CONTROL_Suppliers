package control.suppliers.controller;


import java.util.HashMap;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import control.suppliers.model.CalendarVO;
import control.suppliers.service.CalendarService;

@Controller
@RequestMapping("/calendar")
public class CalendarController {

		private static final Logger log = LoggerFactory.getLogger(CalendarController.class);
		
		private final CalendarService calendarService;
		
		public CalendarController(CalendarService calendarService) {
			this.calendarService = calendarService;
		}
	
		@RequestMapping(value="/event", method = RequestMethod.GET)
		@ResponseBody
		public List<CalendarVO> event() {
			List<CalendarVO> list = calendarService.event();
			System.out.println(list);
			
			JSONObject jsonObj = new JSONObject();
			JSONArray jsonArr = new JSONArray();
			
			HashMap<String, Object> hash = new HashMap<String, Object>();		
			
			for(int i=0; i < list.size(); i++) { 
				hash.put("title", list.get(i).getHospital()); //병원이름
				hash.put("start", list.get(i).getDelivery_date()); //배송일자
				/*hash.put("end", list.get(i).get("end")); //종료일자*/
				
				jsonObj = new JSONObject(hash); //중괄호 {key:value , key:value, key:value}
				jsonArr.add(jsonObj); // 대괄호 안에 넣어주기[{key:value , key:value, key:value},{key:value , key:value, key:value}]
			}
			
			log.info("jsonArrCheck: {}", jsonArr);
			
			return jsonArr;
		}

	}
     





