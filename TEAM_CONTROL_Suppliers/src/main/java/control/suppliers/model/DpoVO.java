package control.suppliers.model;

import java.util.ArrayList;

public class DpoVO {
	private ArrayList<DatePerOrderVO> thisMonth;
	private ArrayList<DatePerOrderVO> thisYear;
	
	public ArrayList<DatePerOrderVO> getThisMonth() {
		return thisMonth;
	}
	public void setThisMonth(ArrayList<DatePerOrderVO> thisMonth) {
		this.thisMonth = thisMonth;
	}
	public ArrayList<DatePerOrderVO> getThisYear() {
		return thisYear;
	}
	public void setThisYear(ArrayList<DatePerOrderVO> thisYear) {
		this.thisYear = thisYear;
	}
	
	@Override
	public String toString() {
		return "DpoVO [thisMonth=" + thisMonth + ", thisYear=" + thisYear + "]";
	}

}
