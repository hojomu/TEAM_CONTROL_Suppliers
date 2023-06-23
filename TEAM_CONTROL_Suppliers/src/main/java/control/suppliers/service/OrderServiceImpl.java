package control.suppliers.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import control.suppliers.mapper.OrderMapper;
import control.suppliers.mapper.OrderProductMapper;
import control.suppliers.model.CriteriaVO;
import control.suppliers.model.CustomerVO;
import control.suppliers.model.OrderVO;
import control.suppliers.model.OrderedProductDTO;
import control.suppliers.model.OrderedProductVO;
import control.suppliers.model.ProductVO;

@Service
public class OrderServiceImpl implements OrderService {
	
	@Autowired
	OrderMapper om;  
	
	@Autowired
	OrderProductMapper opm;

	// 출하 등록 페이지 전체(OrderVO,OrderedProductDTO) insert
	public void orderIn(OrderVO order) {
	    om.orderIn(order);

	    order.getOrderedproduct().forEach(orderedproduct->{
	                System.out.println("service=" + orderedproduct);
	                orderedproduct.setOrder_id(order.getOrder_id());
	                opm.insert(orderedproduct);
	            });
	}
	
	// customer 계약코드 조회 기능
	public CustomerVO memorder_customer(int customer_id) {
		return om.memorder_customer(customer_id);
	}
	
	// product 상품이름만 리스트 불러오기, 검색기능
    public ArrayList<ProductVO> list(CriteriaVO cri) {
    System.out.println(cri);
		return om.list(cri);
	}
	
	// product 상품이름만 리스트 불러오기, 검색기능
	public int total(CriteriaVO cri) {
		return om.total(cri);
	}
	
	
	// product 상품이름으로 상품정보 불러오기
	public ProductVO productDetail(String name) {
		return om.productDetail(name);
	}

	
}
