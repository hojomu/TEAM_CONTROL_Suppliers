package control.suppliers.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import control.suppliers.mapper.CalendarMapper;
import control.suppliers.model.CalendarVO;


	@Service("calendarService")
	public class CalendarServiceImpl implements CalendarService {
		
		@Autowired
		CalendarMapper cm;
		
		@Override
		public List<CalendarVO> getEventsByEmployeeId(int employeeId) {
			return cm.getEventsByEmployeeId(employeeId);
		}
	}
