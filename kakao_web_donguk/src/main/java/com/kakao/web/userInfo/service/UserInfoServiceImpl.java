package com.kakao.web.userInfo.service;

import com.kakao.web.userInfo.model.dao.UserInfoDao;
import com.kakao.web.userInfo.model.dao.UserInfoDaoImpl;
import com.kakao.web.userInfo.model.dto.UpdateUserDto;

public class UserInfoServiceImpl implements UserInfoService{
	private UserInfoDao userInfoDao = null;
	
	public UserInfoServiceImpl() {
		userInfoDao = new UserInfoDaoImpl();
	}
	
	@Override
	public int updateUserInfo(UpdateUserDto updateUserDto) {
		return userInfoDao.updateUserInfo(updateUserDto);
	}
}
