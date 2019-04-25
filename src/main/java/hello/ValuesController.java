package hello;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ValuesController {

    @RequestMapping("/values")
    public String values() {
        return "values";
    }
}
