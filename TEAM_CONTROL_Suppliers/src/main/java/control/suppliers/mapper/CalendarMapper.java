package control.suppliers.mapper;

import java.util.List;
import java.util.Map;


public interface CalendarMapper {
	
	//생산계획 전체 조회
	public List<Map<String, Object>> getEventList();	
}

