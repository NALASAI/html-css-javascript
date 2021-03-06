package com.springboot.security.web.controller;

import java.util.HashMap;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.springboot.security.web.dto.auth.SignUpRespDto;
import com.springboot.security.web.dto.auth.SignupDto;
import com.springboot.security.web.service.AuthService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class AuthController {
	
	private final AuthService authService;
	
	@GetMapping("/auth/signin")
	public String signinForm() {
		return "auth/signin";
	}
	
	@GetMapping("/auth/signup")
	public String signupForm() {
		return "auth/signup";
	}
	
	@ResponseBody
	@PostMapping("/auth/signup")
	public Object signup(@Valid SignupDto signupDto, BindingResult bindingResult) {
		if(bindingResult.hasErrors()) {
			// 유효성 검사 요류 있음
			Map<String, String> errorMap = new HashMap<String, String>();
			for(FieldError error : bindingResult.getFieldErrors()) {
				errorMap.put(error.getField(), error.getDefaultMessage());
			}
			SignUpRespDto<Map<String, String>> signupRespDto = new SignUpRespDto<Map<String, String>>();
			signupRespDto.setCode(400);
			signupRespDto.setMsg(errorMap);
			return signupRespDto;
		}else {
			// 회원가입 진행
			SignUpRespDto<String> signupRespDto = new SignUpRespDto<String>();
			int signupResult = authService.signUp(signupDto);
			if(signupResult == 1) {
				// 회원가입 성공
				signupRespDto.setCode(200);
				signupRespDto.setMsg("회원가입 성공");
			}else if(signupResult == 2) {
				// 아이디 중복
				signupRespDto.setCode(401);
				signupRespDto.setMsg("중복된 아이디입니다");
			}else {
				// db오류
				signupRespDto.setCode(500);
				signupRespDto.setMsg("회원가입 실패. 관리자에게 문의하세요");
			}
			return signupRespDto;
		}
	}
}
