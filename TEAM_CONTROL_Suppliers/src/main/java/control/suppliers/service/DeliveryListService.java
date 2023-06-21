package control.suppliers.service;

import java.util.ArrayList;

import control.suppliers.model.DeliveryListVO;

public interface DeliveryListService {

	public ArrayList<DeliveryListVO> list(DeliveryListVO data);

}
