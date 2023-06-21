package control.suppliers.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;


import control.suppliers.model.DeliveryListVO;
import control.suppliers.service.DeliveryListService;


@Controller
public class DeliveryListController {
	
	@Autowired
	DeliveryListService ds;
	
	@RequestMapping(value="/delivery_list", method = RequestMethod.GET)
	public String deliverylistTable (Model model, DeliveryListVO data) {
		
		List<DeliveryListVO> resultList = ds.list(data);	
		
		Gson gson = new Gson();
		String resultListJson = gson.toJson(resultList);
		
		model.addAttribute("listJson", resultListJson);
		
		model.addAttribute("list", resultList);
		
		return "delivery_list";
	}
	
		
}
