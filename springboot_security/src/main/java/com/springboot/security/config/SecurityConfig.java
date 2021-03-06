package com.springboot.security.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.springboot.security.config.auth.PrincipalDetailsService;
import com.springboot.security.config.oauth2.PrincipalOauth2UserService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@EnableWebSecurity
@Configuration // IOC 등록
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	private final PrincipalOauth2UserService principalOauth2UserService;
	
	@Bean
	public BCryptPasswordEncoder encoder() {
		return new BCryptPasswordEncoder();
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable(); // csrf 비활성화
		http.authorizeRequests()
			.antMatchers("/", "/index", "/user/**")
			.authenticated() // 인증 필요
			.anyRequest() // antMatchers 외에 모든요청
			.permitAll() // 요청이 없어도 된다.(모든 권한을 부여한다)
			.and()
			.formLogin() // 로그인 페이지 커스텀
				.loginPage("/auth/signin") // get
				.loginProcessingUrl("/auth/signin") // post controller를 따로 만들 필요가 없다(security가 자동으로 처리)
				.defaultSuccessUrl("/") // 로그인 성공시 이동할 때 URL
			.and()
			.oauth2Login()
				.loginPage("/auth/signin")
				/*
				 * 1. 코드를 받아온다(인증)
				 * 2. 에세스토큰(권한)
				 * 3. 사용자 프로필 정보를 가져온다
				 * */
				.userInfoEndpoint()
				.userService(principalOauth2UserService); // 가져온 프로필을 후처리(사용되어질 서비스가 필요함)
		
		}
	
}
