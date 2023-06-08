package control.suppliers.mapper;

import java.util.ArrayList;

import control.suppliers.model.AdminOrderVO;
import control.suppliers.model.CriteriaVO;

public interface AdminMapper {
	// 출하 계획표 불러오기
	public ArrayList<AdminOrderVO> list(CriteriaVO cri);
	// 계획표 전체 개수 불러오기
	public int total(CriteriaVO cri);

}
