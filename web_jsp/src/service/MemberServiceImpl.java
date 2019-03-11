package service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;

import domain.Member;
import domain.PageInfo;

public class MemberServiceImpl implements MemberService {
	public List<Member> memberList;
	final private int PER_PAGE_COUNT = 10;
	
	private static MemberService service = new MemberServiceImpl();
	
	public static MemberService getInstance() {
		return service;
	}
	
	public MemberServiceImpl() {
		memberList = Collections.synchronizedList(new ArrayList<>());
		for (int i = 1; i < 45; i++) {
			memberList.add(new Member(
					"hong" + i, "1234", "홍길동" + i,
					"hong" + i + "@naver.com", "010-1234-1234", "M", new Date()));
		}
	}

	@Override
	public PageInfo<Member> getPage(int page) {
		// TODO Auto-generated method stub
		List<Member> list = new ArrayList<Member>();
		
		int start = (page - 1) * PER_PAGE_COUNT;
		int end = start + PER_PAGE_COUNT;
		if (end > memberList.size()) {
			end = memberList.size();
		}

		for (int i = start; i < end; i++) {
			
			list.add(memberList.get(i));
		}

		return new PageInfo<>(memberList.size(), getTotalPage(), page, PER_PAGE_COUNT, list);
	}

	@Override
	public int getTotalPage() {
		return (int)Math.ceil(memberList.size() / (double)PER_PAGE_COUNT); 
	}

	@Override
	public int getTotalCount() {
		// TODO Auto-generated method stub
		return memberList.size();
	}
}
