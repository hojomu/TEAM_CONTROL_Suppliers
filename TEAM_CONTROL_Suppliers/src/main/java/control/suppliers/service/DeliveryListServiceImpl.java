package control.suppliers.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import control.suppliers.mapper.DeliveryListMapper;
import control.suppliers.model.DeliveryListVO;

@Service
public class DeliveryListServiceImpl implements DeliveryListService {

    @Autowired
    private DeliveryListMapper dm;


    public ArrayList<DeliveryListVO> list(DeliveryListVO data) {
        return dm.list(data);
    }
}
