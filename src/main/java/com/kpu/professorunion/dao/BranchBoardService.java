package com.kpu.professorunion.dao;

import java.util.List;

import com.kpu.professorunion.model.BranchBoard;

public interface BranchBoardService {
	
	public void insertbranchboard(BranchBoard bb) throws Exception;
	
	public List<BranchBoard> selectbranchboard(int branchKind, int page, int countList) throws Exception;
	
	public void updatebranchboard(BranchBoard bb) throws Exception;
	
	public int deletebranchboard(int branchNum) throws Exception;
	
	public int getCountList(int branchKind) throws Exception;
	
	public BranchBoard selectBranchBoard(int b) throws Exception;
	
}
