package com.Moviemoving.domain;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.Data;

@Data
public class MovieRateVO {
	private String MovieRate_con;
	private String MovieRate_score;
	private String User_id;
	private Long MovieInfo_no;
	
	//등록완료 후 제자리에 있기 위해 Link 필요
		public String getListLink() {
			UriComponentsBuilder builder = UriComponentsBuilder.fromPath("")
					.queryParam("MovieInfo_no", this.MovieInfo_no);
			
			return builder.toUriString();
		}
}
