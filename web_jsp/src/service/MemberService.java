package service;

import domain.Member;
import domain.PageInfo;

public interface MemberService {
	PageInfo<Member> getPage(int page);
	
	int getTotalPage();
	
	int getTotalCount();
}
