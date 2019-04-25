package hello;

import java.util.ArrayList;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TransactionsController {

    @RequestMapping("/transactions")
    public String transactions(final ModelMap pModel) {
        ArrayList<Transaction> transactionList = new ArrayList<>();
        transactionList.add(new Transaction("5", "618", "23/04/2019", "XXXX", "03372 00150 05417"));
        transactionList.add(new Transaction("4", "596", "20/04/2019", "YYYY", "03372 00150 05417"));
        transactionList.add(new Transaction("3", "25.75", "13/04/2019", "ZZZZ", "03372 00150 05417"));
        transactionList.add(new Transaction("2", "1500", "25/03/2019", "AAAA", "03372 00150 05417"));
        transactionList.add(new Transaction("1", "65", "20/03/2019", "KKKK", "03372 00150 05417"));
        pModel.addAttribute("transactionList", transactionList);
        return "transactions";
    }
}