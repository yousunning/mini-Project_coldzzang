package food.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.tomcat.jni.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import food.service.FoodDTO;
import food.service.FoodService;


@Controller
public class FoodController { //이 클래스는 SpringMVC컨트롤러로 표시되어 있습니다.
	
	@Autowired 
	private FoodService foodService; // 이는 FoodService 클래스의 빈을 컨트롤러에 주입한다.
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main(Model model, HttpSession session) {
							//메인페이지 매핑
		return "mainpage"; //이 메서드는 루트경로("/")에 대한 HTTP GET 요청을 처리하고
	// 뷰 이름 "mainpage"를 반환합니다. Model 및 HttpSession 을 매개변수로 사용합니다.
	}
	
	@RequestMapping("/food/List/1") // 음식 목록 매핑
	public String getFoodList(@PathVariable String page,@ModelAttribute("foodDTO") FoodDTO foodDTO, Model model, HttpSession session) {
		List<FoodDTO> list = foodService.list(foodDTO);
		model.addAttribute("resultList", list);
		return "food/List"; 	
		//이 메서드는 "/FoodService"에서 "FoodDTO" 객체 목록을 가져와 "resultList"로 모델에 추가하고
		//"food/List"라는 뷰이름을 반환합니다.
		
		//FoodDTO 클래스는 음식과 관련된 데이터를 캡슐화하는 데 사용되는 데이터 전송 객체
		//FoodService 클래스는 음식과 관련된 비즈니스 로직을 처리하는 데 사용
	}
    @RequestMapping("food/List/login")
    public String showMyPage() {
        return "login"; // JSP 파일의 이름을 반환 (확장자 제외)
    }
    @RequestMapping("food/List/join")
    public String showMyPage2() {
        return "join"; // JSP 파일의 이름을 반환 (확장자 제외)
    }
    @RequestMapping("food/List/homepage") 
    public String showMyPage3() {
        return "homepage"; // JSP 파일의 이름을 반환 (확장자 제외)
    }
    @RequestMapping("food/List/like")
    public String showMyPage4() {
        return "like"; // JSP 파일의 이름을 반환 (확장자 제외)
    }
    @RequestMapping("food/List/myRefrigerator")
    public String showMyPage5() {
        return "myRefrigerator"; // JSP 파일의 이름을 반환 (확장자 제외)
    }
    @RequestMapping("food/List/myStatistics")
    public String showMyPage6() {
        return "myStatistics"; // JSP 파일의 이름을 반환 (확장자 제외)
    }
    @RequestMapping("food/List/bread")
    public String showMyPage7() {
        return "bread"; // JSP 파일의 이름을 반환 (확장자 제외)
    }
    @RequestMapping("food/List/dobo")
    public String showMyPage8() {
        return "dobo"; // JSP 파일의 이름을 반환 (확장자 제외)
    }
    @RequestMapping("food/List/gogi")
    public String showMyPage9() {
        return "gogi"; // JSP 파일의 이름을 반환 (확장자 제외)
    }
    @RequestMapping("food/List/potato")
    public String showMyPage10() {
        return "potato"; // JSP 파일의 이름을 반환 (확장자 제외)
    }
    @RequestMapping("food/List/strawberry")
    public String showMyPage11() {
        return "strawberry"; // JSP 파일의 이름을 반환 (확장자 제외)
    }
}
