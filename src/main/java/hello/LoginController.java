package hello;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

@Controller
@RequestMapping("/login")
public class LoginController {

    @RequestMapping(method = RequestMethod.GET)
    public String afficher(final ModelMap pModel,
            @RequestParam(value="login") final String pLogin)  {
        pModel.addAttribute("login", pLogin);
        return "login";
    }
    
    @RequestMapping(method = RequestMethod.POST)
    public String afficher2(final ModelMap pModel,
            @RequestParam(value="login") final String pLogin,
            @RequestParam(value="password") final String pPassword) {
        pModel.addAttribute("login", pLogin);
        pModel.addAttribute("password", pPassword);
        getWeirdThings();
        return "afficher";
    }
    
    private static void getWeirdThings() {
        final String uri = "https://jsonplaceholder.typicode.com/posts";
        RestTemplate restTemplate = new RestTemplate();
        String result = restTemplate.getForObject(uri, String.class);
        System.out.println(result);
    }
}
