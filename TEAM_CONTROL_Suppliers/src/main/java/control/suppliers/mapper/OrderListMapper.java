package control.suppliers.mapper;

import java.util.ArrayList;

import control.suppliers.model.AdminOrderVO;
import control.suppliers.model.CriteriaVO;
import control.suppliers.model.OrderVO;

public interface OrderListMapper {
	
	// shipment_table 리스트
	public ArrayList<AdminOrderVO> OrderList(AdminOrderVO data);
	
	// shipment_table 리스트
	public int total(CriteriaVO cri);
	
	/*public AdminOrderVO getOrderId(int orderId);*/

}
