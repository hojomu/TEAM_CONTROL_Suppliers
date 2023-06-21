package control.suppliers.mapper;

import java.util.ArrayList;


import control.suppliers.model.DeliveryListVO;

public interface DeliveryListMapper {

	ArrayList<DeliveryListVO> list(DeliveryListVO data);


}
