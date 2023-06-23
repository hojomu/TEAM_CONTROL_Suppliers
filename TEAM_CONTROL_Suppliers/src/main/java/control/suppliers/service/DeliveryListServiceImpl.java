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
    
	@Override
	public void transport_location(TransportDataVO trandata) {
		 System.out.println(trandata);
		 dm.transport_location(trandata);
	}

	
}
