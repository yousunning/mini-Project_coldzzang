package food.service;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
public class FoodDTO {
    private String user_id;
    private String user_pw;
    private String user_name;
    private String user_emil;
    private String user_pnum;
    
    private String food_id;
    private String food_name;
    
    private String recipe_id;
    private String recipe_name;
    private String recipe_url;
    
    private String rfood_id;
    private String rfood_name;
}
	

	
