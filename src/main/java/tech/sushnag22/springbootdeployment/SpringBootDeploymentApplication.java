package tech.sushnag22.springbootdeployment;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class SpringBootDeploymentApplication {

	@RequestMapping("/")
	public String helloDocker() {
		return "Hello, Docker!";
	}


	public static void main(String[] args) {
		SpringApplication.run(SpringBootDeploymentApplication.class, args);
	}

}
