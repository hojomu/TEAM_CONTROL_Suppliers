package control.suppliers.service;

import java.util.ArrayList;

import control.suppliers.model.CriteriaVO;
import control.suppliers.model.OrderVO;

public interface OrderListService {
	
	// shipment_table 리스트
	public ArrayList<OrderVO> OrderList(CriteriaVO cri);
	
	// shipment_table 리스트
	public int total(CriteriaVO cri);

}
