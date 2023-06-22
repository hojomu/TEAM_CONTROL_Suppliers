package control.suppliers.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import control.suppliers.mapper.DeliveryListMapper;
import control.suppliers.model.DeliveryListVO;
import control.suppliers.model.TransportDataVO;


@Service
public class DeliveryListServiceImpl implements DeliveryListService {

    @Autowired
    private DeliveryListMapper dm;

    // 배송 리스트
    public ArrayList<DeliveryListVO> list(DeliveryListVO data) {
        return dm.list(data);
    }
    
    // 위치 정보 저장하기 
 	public void transport_location(String orderId, String employeeId, String latitude, String longitude, String transferState) {
 		/*System.out.println("service="+data);*/
 		dm.transport_location(orderId, employeeId, latitude,longitude, transferState);
 	}

	
}
