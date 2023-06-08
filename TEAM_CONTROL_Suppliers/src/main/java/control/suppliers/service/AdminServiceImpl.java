package control.suppliers.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import control.suppliers.mapper.AdminMapper;
import control.suppliers.model.AdminOrderVO;
import control.suppliers.model.CriteriaVO;

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

}
