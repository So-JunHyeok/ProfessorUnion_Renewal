package com.kpu.professorunion.dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kpu.professorunion.model.Criteria;
import com.kpu.professorunion.model.Question;

@Service("QuestionService")
public class QuestionServiceImpl implements QuestionService {
	
	@Autowired
	private QuestionDAOImpl qdao;
	
	@Override
	public void question_write(Question q) throws Exception {
		// TODO Auto-generated method stub
		qdao.question_write(q);
	}

	@Override
	public List<Question> question_list(Criteria criteria) throws Exception {
		// TODO Auto-generated method stub
		return qdao.question_list(criteria);
	}
	
	@Override
	public List<Question> admin_question_list(Criteria criteria) throws Exception {
		// TODO Auto-generated method stub
		return qdao.admin_question_list(criteria);
	}

	@Override
	public int countquestion(Criteria criteria) throws Exception {
		// TODO Auto-generated method stub
		return qdao.countquestion(criteria);
	}

	@Override
	public Question contview(Map map) throws Exception {
		return qdao.contview(map);
	}
	
	@Override
	public List<Question> newquestion_list(int count) throws Exception {
		return qdao.newquestion_list(count);
	}
}
