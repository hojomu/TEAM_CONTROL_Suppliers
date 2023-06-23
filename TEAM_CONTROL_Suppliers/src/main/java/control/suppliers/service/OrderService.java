package control.suppliers.service;

import java.util.ArrayList;
import java.util.List;

import control.suppliers.model.CriteriaVO;
import control.suppliers.model.CustomerVO;
import control.suppliers.model.OrderVO;
import control.suppliers.model.OrderedProductDTO;
import control.suppliers.model.OrderedProductVO;
import control.suppliers.model.ProductVO;

public interface OrderService {
	
	// 출하 등록 페이지 전체(OrderVO,OrderedProductDTO) insert
	public void orderIn(OrderVO order);
	
	// customer 계약코드 조회 기능
	public CustomerVO memorder_customer(int customer_id);
	
	// product 상품이름만 리스트 불러오기, 검색기능
	public ArrayList<ProductVO> list(CriteriaVO cri);
	
	// product 상품이름만 리스트 불러오기, 검색기능
	public int total(CriteriaVO cri);
	
	// product 상품이름으로 상품정보 불러오기
	public ProductVO productDetail(String name);

	
	
}
