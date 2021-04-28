package br.com.unipe.prova.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@Configuration
@ComponentScan("br.com.unipe.prova")
@EnableWebMvc
public class RootConfig {

}
