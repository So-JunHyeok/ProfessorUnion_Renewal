package com.kpu.professorunion.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kpu.professorunion.model.BranchBoard;

@Service("BranchBoardService")
public class BranchBoardServiceImpl implements BranchBoardService {
	
	@Autowired
	private BranchBoardDAOImpl bbdao;
	
	@Override
	public void insertbranchboard(BranchBoard bb) throws Exception {
		bbdao.insertBranchBoard(bb);
	} 

	@Override
	public List<BranchBoard> selectbranchboard(int branchKind, int page, int countList) throws Exception {
		return bbdao.selectBranchBoard(branchKind, page,countList);
	}

	@Override
	public int getCountList(int branchKind) throws Exception {
		return bbdao.getcountlist(branchKind);
	}

	@Override
	public int deletebranchboard(int branchNum) throws Exception {
		return bbdao.deleteBranchBoard(branchNum);
	}

	@Override
	public void updatebranchboard(BranchBoard bb) throws Exception {
		 bbdao.updateBranchBoard(bb);
	}

	@Override
	public BranchBoard selectBranchBoard(int b) throws Exception {
		return bbdao.selectBranchBoard(b);
	}


}
