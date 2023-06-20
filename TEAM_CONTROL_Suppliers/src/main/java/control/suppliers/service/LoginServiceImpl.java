package control.suppliers.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import control.suppliers.mapper.LoginMapper;
import control.suppliers.model.LoginVO;

@Service
public class LoginServiceImpl implements LoginService{
	
	@Autowired
	LoginMapper lm;
	
	// 로그인 확인
	public LoginVO login(LoginVO login) {
		return lm.login(login);
	}
	
	
	
}
