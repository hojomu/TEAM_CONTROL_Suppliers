package control.suppliers.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import control.suppliers.mapper.CalendarMapper;


	@Service("calendarService")
	public class CalendarServiceImpl implements CalendarService {
		
		@Autowired
		private CalendarMapper calendarMapper;

		@Override
		public List<Map<String, Object>> getEventList() {
			return calendarMapper.getEventList();
		}	

	}
