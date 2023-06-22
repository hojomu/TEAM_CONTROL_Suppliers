package control.suppliers.mapper;

import java.util.ArrayList;


import control.suppliers.model.DeliveryListVO;
import control.suppliers.model.ELocationVO;
import control.suppliers.model.TransportDataVO;

public interface DeliveryListMapper {

	// 배송 리스트
	ArrayList<DeliveryListVO> list(DeliveryListVO data);

	//운반자 위치 정보 
	public void transport_location(String orderId, String employeeId, String latitude, String longitude, String transferState);




}
