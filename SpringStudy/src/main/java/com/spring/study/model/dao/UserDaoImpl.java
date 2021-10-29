package com.spring.study.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.study.db.DBConnectionMgr;
import com.spring.study.model.dto.UserDto;

@Repository
public class UserDaoImpl implements UserDao {
    private DBConnectionMgr pool = null;
    
    public UserDaoImpl() {
        pool = DBConnectionMgr.getInstance();
    }
    
    /*@Override
    public UserDto getUser(String email) {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String sql = null;
        UserDto userDto = null;
        
        try {
            con = pool.getConnection();
            sql = "select * from user_mst where user_email = ?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, email);
            rs = pstmt.executeQuery();
            
            rs.next();
            
            userDto = new UserDto();
            userDto.setEmail(rs.getString(1));
            userDto.setPassword(rs.getString(2));
            userDto.setName(rs.getString(3));
            userDto.setPhoneNumber(rs.getString(4));
            
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            pool.freeConnection(con, pstmt, rs);
        }
        return userDto;
    }*/
    
	@Autowired
	private SqlSession session;
	
	@Override
	public UserDto getUser(String email) {
		return session.selectOne("com.spring.study.model.dao.UserDao.getUser", email);
	}
	
	@Override
	public int login(UserDto userDto) {
		return session.selectOne("com.spring.study.model.dao.UserDao.login", userDto);
	}
	
	@Override
	public int idCheck(String user_email) {
		return session.selectOne("com.spring.study.model.dao.UserDao.idCheck", user_email);
	}
	
	@Override
	public int signUp(UserDto userDto) {
		return session.insert("com.spring.study.model.dao.UserDao.signUp", userDto);
	}
}