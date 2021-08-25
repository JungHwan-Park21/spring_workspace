package com.Moviemoving.service;

import java.util.List;

import com.Moviemoving.domain.adminRateVO;

public interface adminRateService {
	//등록
	public void register(adminRateVO board);
	//상세보기
	public adminRateVO get(Long MoveInfo_no);
	//수정
	public boolean modify(adminRateVO board);
	//삭제
	public boolean remove(Long MoveInfo_no);
	//목록
	public List<adminRateVO> adminRate();
}
