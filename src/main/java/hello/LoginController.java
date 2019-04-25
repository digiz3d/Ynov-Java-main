package hello;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

@Controller

public class LoginController {
    @RequestMapping(value="/login",method = RequestMethod.GET)
    public String afficher(final ModelMap pModel) {
        return "login";
    }

    @RequestMapping(value="/login/particulier",method = RequestMethod.GET)
    public String login_particuliuer(final ModelMap pModel) {
        return "login_particulier";
    }

    @RequestMapping(value="/login/conseiller",method = RequestMethod.GET)
    public String login_conseiller(final ModelMap pModel) {
        return "login_conseiller";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String afficher2(final ModelMap pModel,
            @RequestParam(value = "login") final String pLogin,
            @RequestParam(value = "password") final String pPassword) {
        pModel.addAttribute("login", pLogin);
        pModel.addAttribute("password", pPassword);
        //getWeirdThings(); // fake API call
        return "afficher";
    }
    
    private static void getWeirdThings() {
        final String uri = "https://jsonplaceholder.typicode.com/posts";
        RestTemplate restTemplate = new RestTemplate();
        String result = restTemplate.getForObject(uri, String.class);
        System.out.println(result);
    }
}
