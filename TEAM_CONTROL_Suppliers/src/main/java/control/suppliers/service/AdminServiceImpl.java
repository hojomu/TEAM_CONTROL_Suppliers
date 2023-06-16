package control.suppliers.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import control.suppliers.mapper.AdminMapper;
import control.suppliers.model.AdminGraphVO;
import control.suppliers.model.AdminOrderVO;
import control.suppliers.model.CriteriaVO;
import control.suppliers.model.DatePerOrderVO;
import control.suppliers.model.ProductStockVO;
import control.suppliers.model.TransportDataVO;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	AdminMapper am;
	
	// 출하 계획표 불러오기
	public ArrayList<AdminOrderVO> list(CriteriaVO cri){
		return am.list(cri);
	}
	
	// 계획표 전체 개수 불러오기
	public int total(CriteriaVO cri) {
		return am.total(cri);
	}
	
	// 그래프 페이지
	public AdminGraphVO getGraph(AdminGraphVO adm) {
		
		AdminGraphVO graphData = new AdminGraphVO();
		graphData.setOrderAmount(am.getGraph(adm));
		graphData.setTotTurnover(am.selectTotTurnover(adm));
		graphData.setCustomerNum(am.selectCustomerNum(adm));
		
		return graphData;
	}
	public ArrayList<DatePerOrderVO> getDpo(AdminGraphVO adm) {
		return am.getDpo(adm);
	}
	public ArrayList<ProductStockVO> getStock(){
		return am.getStock();
	}
	
	// 관리자 운반 관리 페이지로 이동
	public ArrayList<AdminOrderVO> transportList(){
		return am.transportList();
	}
	// 실시간 랜더링 데이터 호출
	public ArrayList<TransportDataVO> getCarrierDatas(){
		return am.getCarrierDatas();
	}
	

	
	
	
	
}





