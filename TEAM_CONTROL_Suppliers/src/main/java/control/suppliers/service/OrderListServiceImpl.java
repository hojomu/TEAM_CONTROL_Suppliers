package control.suppliers.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import control.suppliers.mapper.OrderListMapper;
import control.suppliers.model.AdminOrderVO;
import control.suppliers.model.CriteriaVO;
import control.suppliers.model.OrderVO;

@Service
public class OrderListServiceImpl implements OrderListService {
	
	@Autowired
	OrderListMapper olm;

	//상품조회
	// shipment_table 리스트
	public ArrayList<AdminOrderVO> OrderList(AdminOrderVO data){
		return olm.OrderList(data);
	}

	// shipment_table 리스트
	public int total(CriteriaVO cri) {
		return olm.total(cri);
	}
	
}
