package com.hanma.hanmaterraceclientserver;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.cloud.openfeign.EnableFeignClients;

@EnableFeignClients
@SpringBootApplication()
public class HanmaTerraceClientServerApplication {

    public static void main(String[] args) {
        SpringApplication.run(HanmaTerraceClientServerApplication.class, args);
    }

}
