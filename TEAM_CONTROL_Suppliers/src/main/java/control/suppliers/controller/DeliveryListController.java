package control.suppliers.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;

import control.suppliers.model.DeliveryListVO;
import control.suppliers.model.ELocationVO;
import control.suppliers.model.TransportDataVO;
import control.suppliers.service.DeliveryListService;


@Controller
public class DeliveryListController {
	
	@Autowired
	DeliveryListService ds;
	
	// 배송 리스트 불러오기
	@GetMapping(value="/delivery_list")
	public String deliverylistTable (Model model, DeliveryListVO data) {
		
		List<DeliveryListVO> resultList = ds.list(data);	
		
		Gson gson = new Gson();
		String resultListJson = gson.toJson(resultList);
		
		model.addAttribute("listJson", resultListJson);		
		model.addAttribute("list", resultList);
		
		return "delivery_list";
	}
	
	// 운반자 위치 확인 

	@PostMapping(value = "/transport_location") 
	public String transport_location(@RequestBody TransportDataVO trandata) {

		System.out.println(trandata);
		
		ds.transport_location(trandata);
			return "transport_location";

	}
		
}
