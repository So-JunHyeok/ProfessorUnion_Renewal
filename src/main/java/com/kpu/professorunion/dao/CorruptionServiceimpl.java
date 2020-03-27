package com.kpu.professorunion.dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kpu.professorunion.model.AgonyComment;
import com.kpu.professorunion.model.Corruption;
import com.kpu.professorunion.model.CorruptionComment;
import com.kpu.professorunion.model.Criteria;
@Service
public class CorruptionServiceimpl implements CorruptionService {

	@Autowired
	CorruptionDAOImpl corruptiondao;
	
	@Override
	public void insertCorruption(Corruption corruption) throws Exception {
		corruptiondao.insertCorruption(corruption);
	}

	@Override
	public int selectcorruptionUserlisttotalCount(Criteria criteria) throws Exception {
		return corruptiondao.selectcorruptionUserlisttotalCount(criteria);
	}

	@Override
	public List<Corruption> selectcorruptionUserList(Criteria criteria) throws Exception {
		return corruptiondao.selectcorruptionUserList(criteria);
	}

	@Override
	public int selectCount() throws Exception {
		return corruptiondao.selectCount();
	}

	@Override
	public int selectcorruptiontotalCount(Map map) throws Exception {
		return corruptiondao.selectcorruptiontotalCount(map);
	}

	@Override
	public List<Corruption> selectcorruptionCriteria(Map map) throws Exception {
		return corruptiondao.selectcorruptionCriteria(map);
	}

	@Override
	public Corruption selectcorruptiondetail(int anum) throws Exception {
		return corruptiondao.selectcorruptiondetail(anum);
	}

	@Override
	public void deleteCorruption(int num) throws Exception {
		corruptiondao.deleteCorruption(num);
	}

	@Override
	public void updateCorruption(Corruption corruption) throws Exception {
		corruptiondao.updateCorruption(corruption);
	}

	@Override
	public void updateRead(int anum) throws Exception {
		corruptiondao.updateRead(anum);
	}

	@Override
	public void insertCorruptionComment(CorruptionComment comment) throws Exception {
		corruptiondao.insertCorruptionComment(comment);
	}

	@Override
	public List<CorruptionComment> selectcorruptioncommentList(int anum) throws Exception {
		return corruptiondao.selectcorruptioncommentList(anum);
	}

	@Override
	public void deleteCorruptionComment(Map map) throws Exception {
		corruptiondao.deleteCorruptionComment(map);
	}

	@Override
	public List<Corruption> newcorruptionlist(int count) throws Exception{
		return corruptiondao.newcorruptionlist(count);
	}

}
