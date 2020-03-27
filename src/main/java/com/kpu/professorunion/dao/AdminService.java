package com.kpu.professorunion.dao;

import java.util.List;

import java.util.Map;

import com.kpu.professorunion.model.AdminConfig;
import com.kpu.professorunion.model.BoardLevel;
import com.kpu.professorunion.model.MainImgUplod;
import com.kpu.professorunion.model.Member;
import com.kpu.professorunion.model.VisitrecordBean;

public interface AdminService {

	
	public void MainImgUpdate(MainImgUplod mu) throws Exception;
	public String getMainImgFile(String cf_path)throws Exception;
	public void setConfigContent(AdminConfig model) throws Exception;
	public AdminConfig getConfigContemt() throws Exception;
	public List<Member> getManagementMemberlist(Map map)throws Exception;
	public int getMembercount()throws Exception;
	public void setMemberManagementModify(Member member) throws Exception;
	public void MemberManagementDel(Member member) throws Exception;
	public void setVisitInfo(Map map) throws Exception;
	public List<VisitrecordBean> getVisitInfo(int StarRow, int PageSize) throws Exception;
	public int visitcount() throws Exception;
	public String getVisitInfoall(String vi_ip, String vi_date) throws Exception;
	public void MemberManagementOneDel(String mb_id) throws Exception;
	public void UpeateBoardLevel(BoardLevel BoardLevel) throws Exception;
	public BoardLevel getBoatdLevel(String bo_table)throws Exception;
	public List<BoardLevel>getBoardLevelList(int StarRow, int PageSize)throws Exception;
}