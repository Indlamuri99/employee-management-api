@RestController
public class HomeController {

    @GetMapping("/")
    public String home() {
        return "Welcome to Employee Management API";
    }
}