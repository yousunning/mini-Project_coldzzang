package food.service.impl;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import food.service.FoodDTO;
import food.service.FoodService;



@Service ("FoodService")
public class FoodServiceImpl implements FoodService {
	@Autowired
	private FoodDAO FoodDAO;
	

	//
	public List<FoodDTO> list(FoodDTO foodDTO) {
		return FoodDAO.getFoodList(foodDTO);
	}


	
}
