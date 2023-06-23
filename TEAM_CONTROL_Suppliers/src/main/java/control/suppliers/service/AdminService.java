package control.suppliers.service;

import java.util.ArrayList;

import control.suppliers.model.AdminGraphVO;
import control.suppliers.model.AdminOrderVO;
import control.suppliers.model.CriteriaVO;
import control.suppliers.model.DatePerOrderVO;
import control.suppliers.model.DpoVO;
import control.suppliers.model.ProductStockVO;
import control.suppliers.model.TransportDataVO;

public interface AdminService {
	// 출하 계획표 불러오기
	public ArrayList<AdminOrderVO> list(AdminOrderVO data);
	// 계획표 전체 개수 불러오기
	public int total(CriteriaVO cri);
	
	// 그래프 페이지
	public AdminGraphVO getGraph();
	public DpoVO getDpo();
	public ArrayList<ProductStockVO> getStock();
	
	// 관리자 운반 페이지 리스트
	public ArrayList<AdminOrderVO> transportList();
	// 실시간 랜더링 데이터 호출
	public ArrayList<TransportDataVO> getCarrierDatas();
	
	// 주문 취소
	public int cancelOrder(AdminOrderVO data);
	
}
