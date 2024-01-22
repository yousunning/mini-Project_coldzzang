package food.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.stereotype.Controller;
import food.service.FoodDTO;
import food.service.FoodService;


@Controller
public class FoodController { //�� Ŭ������ SpringMVC��Ʈ�ѷ��� ǥ�õǾ� �ֽ��ϴ�.
	
	@Autowired 
	private FoodService foodService; // �̴� FoodService Ŭ������ ���� ��Ʈ�ѷ��� �����Ѵ�.
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main(Model model, HttpSession session) {
							//���������� ����
		return "mainpage"; //�� �޼���� ��Ʈ���("/")�� ���� HTTP GET ��û�� ó���ϰ�
	// �� �̸� "mainpage"�� ��ȯ�մϴ�. Model �� HttpSession �� �Ű������� ����մϴ�.
	}
	
	@RequestMapping("/food/List/1") // ���� ��� ����
	public String getFoodList(@PathVariable String page,@ModelAttribute("foodDTO") FoodDTO foodDTO, Model model, HttpSession session) {
		List<FoodDTO> list = foodService.list(foodDTO);
		model.addAttribute("resultList", list);
		return "food/List"; 	
		//�� �޼���� "/FoodService"���� "FoodDTO" ��ü ����� ������ "resultList"�� �𵨿� �߰��ϰ�
		//"food/List"��� ���̸��� ��ȯ�մϴ�.
		
		//FoodDTO Ŭ������ ���İ� ���õ� �����͸� ĸ��ȭ�ϴ� �� ���Ǵ� ������ ���� ��ü
		//FoodService Ŭ������ ���İ� ���õ� ����Ͻ� ������ ó���ϴ� �� ���
	}
	    @RequestMapping("food/List/login")
	    public String showMyPage() {
	        return "login"; // JSP ������ �̸��� ��ȯ (Ȯ���� ����)
	    }
	    @RequestMapping("food/List/join")
	    public String showMyPage2() {
	        return "join"; // JSP ������ �̸��� ��ȯ (Ȯ���� ����)
	    }
	    @RequestMapping("food/List/homepage") 
	    public String showMyPage3() {
	        return "homepage"; // JSP ������ �̸��� ��ȯ (Ȯ���� ����)
	    }
	    @RequestMapping("food/List/like")
	    public String showMyPage4() {
	        return "like"; // JSP ������ �̸��� ��ȯ (Ȯ���� ����)
	    }
	    @RequestMapping("food/List/myRefrigerator")
	    public String showMyPage5() {
	        return "myRefrigerator"; // JSP ������ �̸��� ��ȯ (Ȯ���� ����)
	    }
	    @RequestMapping("food/List/myStatistics")
	    public String showMyPage6() {
	        return "myStatistics"; // JSP ������ �̸��� ��ȯ (Ȯ���� ����)
	    }
	    @RequestMapping("food/List/recipe")
	    public String showMyPage7() {
	        return "recipe"; // JSP ������ �̸��� ��ȯ (Ȯ���� ����)
	    }
	}

