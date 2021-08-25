package com.Moviemoving.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Moviemoving.domain.adminRateVO;

import com.Moviemoving.mapper.adminRateMapper;

import lombok.Setter;

@Service	
public class adminRateServiceImpl implements adminRateService{
	@Setter(onMethod_ = @Autowired)
	private adminRateMapper mapper;
	
	
	@Override
	public void register(adminRateVO board) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public adminRateVO get(Long MoveInfo_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean modify(adminRateVO board) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean remove(Long MoveInfo_no) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<adminRateVO> adminRate() {
		
		return mapper.adminRate();
	}

}
