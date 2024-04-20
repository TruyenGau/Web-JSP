package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.FlowerDtls;
import com.entity.Comment;
import com.entity.User;

public class CommentImpl implements CommentDao {

	private Connection con;
	
	public CommentImpl(Connection con) {
		super();
		this.con = con;
		
	}
	public boolean regisComment(Comment comment) {
		boolean f = false;
		try {
			String sql = "insert into comments(user_id, comments, user_name) values (?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, comment.getUser_id());
			ps.setString(2, comment.getComment());
			ps.setString(3, comment.getName());
			
			
			int i = ps.executeUpdate();
			if(i==1) {
				f = true;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return f;
	}
	
	public List<Comment> getAllComments() {
		List<Comment> list = new ArrayList<Comment>();
		Comment c = null;
		try {
			String spl = "select * from comments";
			PreparedStatement ps = con.prepareStatement(spl);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				c = new Comment();
				c.setUser_id(rs.getInt(2));
				c.setComment(rs.getString(3));
				c.setName(rs.getString(4));
				list.add(c);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	

}
