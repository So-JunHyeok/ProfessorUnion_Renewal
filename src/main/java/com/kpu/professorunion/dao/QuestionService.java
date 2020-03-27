package com.kpu.professorunion.dao;

import java.util.List;
import java.util.Map;

import com.kpu.professorunion.model.Criteria;
import com.kpu.professorunion.model.Question;

public interface QuestionService {
	public void question_write(Question q) throws Exception;
	public List<Question> question_list(Criteria criteria) throws Exception;
	public List<Question> admin_question_list(Criteria criteria) throws Exception;
	public int countquestion(Criteria criteria) throws Exception;
	public Question contview(Map map)throws Exception;
	public List<Question> newquestion_list(int count) throws Exception;
	
}
