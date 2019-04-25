package hello;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/details")
public class DetailsController {

    /*
    @RequestMapping(method=RequestMethod.GET)
    public String details() {
        return "details";
    }
    */
    
    @RequestMapping(method = RequestMethod.GET)
    public String afficher2(final ModelMap pModel) {
        pModel.addAttribute("numero_compte", "04521 00470 05784");
        pModel.addAttribute("date_creation", "20/10/2013");
        pModel.addAttribute("solde", 2165);
        pModel.addAttribute("devise", "€");
        
        return "details";
    }
}
