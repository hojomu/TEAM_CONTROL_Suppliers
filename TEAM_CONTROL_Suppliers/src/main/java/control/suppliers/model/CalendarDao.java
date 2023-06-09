package control.suppliers.model;

import java.util.List;
import java.util.Calendar;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("calendarDao")
public class CalendarDao {
	@Autowired
	private SqlSession sqlSession;
	
	public List<Calendar> getCalendar() throws Exception {
		List<Calendar> calendar = null;
		calendar = sqlSession.selectList("Calendar.calendarList");
		return calendar;
	 }
	}