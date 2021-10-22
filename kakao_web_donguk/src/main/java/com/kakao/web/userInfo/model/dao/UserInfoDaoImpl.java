package com.kakao.web.userInfo.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.kakao.web.db.DBConnectionMgr;
import com.kakao.web.index.model.dto.User;
import com.kakao.web.userInfo.model.dto.UpdateUserDto;

public class UserInfoDaoImpl implements UserInfoDao {
	private DBConnectionMgr pool = null;
	
	public UserInfoDaoImpl() {
		pool = DBConnectionMgr.getInstance();
	}
	
	@Override
	public int updateUserInfo(UpdateUserDto updateUserDto) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		int result = 0;
		
		try {
			con = pool.getConnection();
			sql = "update user_mst set user_password = ?, user_phone = ? where user_email = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, updateUserDto.getPassword());
			pstmt.setString(2, updateUserDto.getPhone());
			pstmt.setString(3, updateUserDto.getEmail());
			System.out.println(updateUserDto.getPhone());
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return result;
	}
}
