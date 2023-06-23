package control.suppliers.service;

import java.util.ArrayList;

import control.suppliers.model.DeliveryListVO;
import control.suppliers.model.ELocationVO;
import control.suppliers.model.TransportDataVO;

public interface DeliveryListService {
	
	// 배송 리스트
	public ArrayList<DeliveryListVO> list(DeliveryListVO data);

	// 운반자 위치 정보  
	public void transport_location(TransportDataVO trandata);

}
 