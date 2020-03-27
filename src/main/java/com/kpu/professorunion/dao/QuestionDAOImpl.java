package com.kpu.professorunion.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kpu.professorunion.model.Criteria;
import com.kpu.professorunion.model.Question;

@Repository
public class QuestionDAOImpl {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public void question_write (Question q) throws Exception{
		sqlSession.insert("question_write", q);
	}
	
	public List<Question> question_list(Criteria criteria) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList("question_list", criteria) ;
	}
	
	public List<Question> admin_question_list(Criteria criteria) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList("admin_question_list", criteria) ;
	}
	
	public int countquestion(Criteria criteria) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("countquestion", criteria);
	}

	public Question contview(Map map) {
		return sqlSession.selectOne("contview",map);
	}
	
	public List<Question> newquestion_list(int count) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList("new_question_list", count);
	}
}
