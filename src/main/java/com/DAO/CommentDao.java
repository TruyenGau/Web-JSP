package com.DAO;

import java.util.List;

import com.entity.FlowerDtls;
import com.entity.Comment;
import com.entity.User;

public interface CommentDao {
	public boolean regisComment(Comment comment);
	public List<Comment> getAllComments();
}
