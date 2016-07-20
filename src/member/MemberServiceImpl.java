package member;

import java.util.List;

import bank.AccountService;
import bank.AccountServiceImpl;



public class MemberServiceImpl implements MemberService {
	MemberBean student = null;
	
	MemberDAO dao = MemberDAO.getInstance();
	AccountService accService = AccountServiceImpl.getInstance();//// 5.6번
	MemberBean session;/// 로긴정보만 담당하는 인스턴스변수
	private static MemberServiceImpl instance = new MemberServiceImpl();

	public static MemberServiceImpl getInstance() {
		return instance;
	}

	private MemberServiceImpl() {
	//	session = new MemberBean(); 
	}

	@Override
	public String regist(MemberBean bean) {
		// 1등록
		String msg = "";
//		String sql = "insert into member(id,pw,name,reg_date,ssn)" + "values('" + mem.getId() + "','" + mem.getPw()
//				+ "','" + mem.getName() + "','" + mem.getRegDate() + "','" + mem.getSsn() + "')";
		int result = dao.insert(bean);
		if (result == 1) {
			msg = "회원가입축하";
		} else {
			msg = "회원가입실패";
		}

		return msg;
	}

	@Override
	public MemberBean show() {
		// 2보기
		return session;
	}

	@Override
	public void update(MemberBean mem) {
		// 3수정
		int result = dao.update(mem);
		if (result ==1) {
			session = this.findById(mem.getId());
		}
	
	
	}

	@Override
	public void delete(MemberBean mem) {
		// 4삭제
		String result = "";
		if (dao.delete(mem) ==1) {
			result = "삭제성공";
			session = null;
		} else {
			result = "삭제실패";
		}	
		
		}

	@Override
	public int count() {
		// 컨트롤러에서 int count = service.count(); 만들고 서비스 / 임플 까지 타고 타고옴
		return dao.count();//토스
	}

	@Override
	public MemberBean findById(String findID) {
		// TODO Auto-generated method stub
//		MemberBean t = 
//		MemberBean t2 = new MemberBean(t.getId(),t.getPw(),t.getName(),t.getSsn());
		return dao.findById(findID);
	}

	@Override
	public List<MemberBean> list() {
		// TODO Auto-generated method stub
		return dao.list();
	}

	@Override
	public List<MemberBean> findByName(String findName) {
		// TODO Auto-generated method stub
		return dao.findByname(findName);
	}
		
	public String login(MemberBean member) {
		//로그인
		String result = "";

		if (dao.login(member)) {
			session = dao.findById(member.getId());
			result = session.getName();
			accService.map();
		} else {
			result = "";
		}
			
		
		return result;
	}

	@Override
	public int genderCount(String gender) {
		// TODO Auto-generated method stub
		return dao.genderCount(gender);
	}

	@Override
	public void logout(MemberBean member) {
		
		if (member.getId().equals(session.getId()) && 
				member.getPw().equals(session.getPw())) {
			session = null;
		}
		
	}
	
	
	
	
	}


