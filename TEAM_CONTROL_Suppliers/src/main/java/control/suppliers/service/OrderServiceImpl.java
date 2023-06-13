package control.suppliers.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import control.suppliers.mapper.OrderMapper;
import control.suppliers.model.CriteriaVO;
import control.suppliers.model.CustomerVO;
import control.suppliers.model.ProductVO;

@Service
public class OrderServiceImpl implements OrderService {
	
	@Autowired
	OrderMapper om;
	
	// customer 계약자 불러오기
	public CustomerVO memorder_customer(int customer_id) {
		return om.memorder_customer(customer_id);
	}
	
/*	// product 상품이름 불러오기, 검색기능
	public ArrayList<ProductVO> list(CriteriaVO cri){
		System.out.println(cri);
		return om.list(cri);
	}

	// product 상품이름 불러오기, 검색기능
	public int total(CriteriaVO cri) {
		return om.total(cri);
	}
*/
	
	public ArrayList<ProductVO> list(CriteriaVO cri) {
		return om.list(cri);
	}
	
	public int total(CriteriaVO cri) {
		return om.total(cri);
	}
}
