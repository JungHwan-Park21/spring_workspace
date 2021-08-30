package com.Moviemoving.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Moviemoving.domain.CriteriaVO;
import com.Moviemoving.domain.MovieVO;
import com.Moviemoving.mapper.SearchMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class SearchServiceImpl implements SearchService {

	@Setter(onMethod_ = @Autowired)
	private SearchMapper mapper;

	@Override
	public MovieVO get(int MovieInfo_no) {
		log.info("get........" + MovieInfo_no);

		return mapper.read(MovieInfo_no);

	}

	@Override
	public List<MovieVO> getList() {
		log.info("getList.........");
		;

		return mapper.getList();

	}

	@Override
	public List<MovieVO> getListWithPaging(CriteriaVO cri) {
		log.info("get List with criteria : " + cri);

		return mapper.getListWithPaging(cri);
	}

	@Override
	public int getTotal() {
		log.info("get total ");

		return mapper.getTotal();
	}

}
