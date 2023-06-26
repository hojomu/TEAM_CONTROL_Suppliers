package control.suppliers.mapper;

import java.util.ArrayList;
import java.util.List;

import control.suppliers.model.CriteriaVO;
import control.suppliers.model.CustomerVO;
import control.suppliers.model.OrderVO;
import control.suppliers.model.OrderedProductDTO;
import control.suppliers.model.OrderedProductVO;
import control.suppliers.model.ProductVO;

public interface OrderMapper {
	
	// 출하 등록 페이지 전체(OrderVO,OrderedProductDTO) insert
	public void orderIn(OrderVO order);
	
	// customer 계약코드 조회 기능
	/*public CustomerVO memorder_customer(int customer_id);*/
	public ArrayList<CustomerVO> customerList();
	
    // product 상품이름만 리스트 불러오기, 검색기능
	public ArrayList<ProductVO> productList();
	
	// product 상품이름만 리스트 불러오기, 검색기능
	/*public int total(CriteriaVO cri);*/
	
	// product 상품이름으로 상품정보 불러오기
	public ProductVO productDetail(String name);
	
	
}
