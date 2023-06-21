package control.suppliers.mapper;

import java.util.List;


import control.suppliers.model.CalendarVO;


public interface CalendarMapper {
	
	//생산계획 전체 조회
	public List<CalendarVO> event();	
}

