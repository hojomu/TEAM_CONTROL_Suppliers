package control.suppliers.mapper;

import java.util.ArrayList;

import control.suppliers.model.CriteriaVO;
import control.suppliers.model.CustomerVO;
import control.suppliers.model.ProductVO;

public interface OrderMapper {
	
	// customer 계약자 불러오기
	public CustomerVO memorder_customer(int customer_id);
	
/*    // product 상품이름 불러오기, 검색기능
	public ArrayList<ProductVO> list(CriteriaVO cri);
	
	// product 상품이름 불러오기, 검색기능
	public int total(CriteriaVO cri);*/
	
	public ArrayList<ProductVO> list(CriteriaVO cri);
	
	public int total(CriteriaVO cri);
	
	public ProductVO detail(String name);

}
