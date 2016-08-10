package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import global.DispatcherServlet;
import global.ParamMap;
import global.Seperator;
import subject.SubjectBean;
import subject.SubjectMember;
import subject.SubjectService;
import subject.SubjectServiceImpl;

/**
 * Servlet implementation class MemberController
 */
@WebServlet("/member.do")
//		"/member/detail.do",	
//		"/member/regist.do",
//		"/member/update.do",
//		"/member/delete.do",
//		"/member/login.do",
//		"/member/logout.do",
//		"/member/findBy.do",
//		"/member/count.do",


public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		System.out.println("===MEMBER컨트롤러진입===");
		HttpSession session = request.getSession();////////
		Seperator.init(request, response);
		MemberService service = MemberServiceImpl.getInstance();
		SubjectService subjService = SubjectServiceImpl.getInstance();
		SubjectMember sm = new SubjectMember();
		MemberBean member = new MemberBean();
		SubjectBean subject = new SubjectBean();
		System.out.println("액션 ? "+Seperator.command.getAction());
		switch (Seperator.command.getAction()) {
		
		 case "move" : 
			 DispatcherServlet.send(request, response, Seperator.command);
			 break;
		 case "login":
			
			member.setId(request.getParameter("id"));
			member.setPw(request.getParameter("pw"));
			sm = service.login(member);
			if (member.getId().equals("fail")) {
				System.out.println("컨트롤러  로긴 실패");
				Seperator.command.setPage("login");
				Seperator.command.setView();
				
			}else {
				System.out.println("컨트롤러  로긴 성공");
				request.setAttribute("user", sm);
				session.setAttribute("user", sm);//////
				Seperator.command.setDirectory("global");
				Seperator.command.setView();
			}
			DispatcherServlet.send(request, response, Seperator.command);
			 break;
		case "regist":
			System.out.println("레지스트  진입");
			member.setName(request.getParameter("name"));
			member.setId(request.getParameter("id"));
			member.setPw(request.getParameter("pw"));
			member.setSsn(request.getParameter("ssn"));
			member.setEmail(request.getParameter("email"));
			member.setPhone(request.getParameter("phone"));
			member.setRegDate();
			System.out.println("전공:::"+request.getParameter("major"));
			System.out.println("수강과목:::"+ParamMap.getValues(request, "subject").toString());
			ParamMap.getValues(request, "subject").toString();
			String result = service.regist(member);
			if (result.equals("fail")) {
				System.out.println("컨트롤러 : 회원가입실패");
				Seperator.command.setPage("regist");
				Seperator.command.setView();
			} else {
				System.out.println("컨트롤러 : 회원가입성공");
				subject.setId(request.getParameter("id"));
				subject.setMajor(request.getParameter("major"));
				subject.setSubjects(ParamMap.getValues(request, "subject"));
				subjService.insert(subject);
				Seperator.command.setDirectory(request.getParameter("directory"));
				/*Seperator.command.setPage("login");
				Seperator.command.setView();*/
				
			}
			DispatcherServlet.send(request, response, Seperator.command);
			break;
		case "update":
			System.out.println("업데이트 진입");
			request.setAttribute("detail", service.show());
			member.setPw(request.getParameter("pw"));
			member.setEmail(request.getParameter("email"));
			member.setId(service.show().getId());
			service.update(member);
			Seperator.command.setDirectory(request.getParameter("directory"));
			DispatcherServlet.send(request, response, Seperator.command);			
			break;
		case "delete":
			member.setId(service.show().getId());
			member.setPw(request.getParameter("pw"));
			System.out.println(member.getPw());
			service.delete(member);
			DispatcherServlet.send(request, response, Seperator.command);
			break;
		case "detail":
			System.out.println("디테일 진입");
			DispatcherServlet.send(request, response, Seperator.command);
			
			break;
		case "list"://
			request.setAttribute("list", service.list());
			DispatcherServlet.send(request, response, Seperator.command);
			break;	
		case "logout":
			System.out.println(" CASE 로그아웃진입");
			session.invalidate();
			Seperator.command.setDirectory("home");
			Seperator.command.setPage("main");
			Seperator.command.setView();
			DispatcherServlet.send(request, response, Seperator.command);
			break;
	
		
		case "findById"://
			System.out.println("findById 분기문진입");			
			request.setAttribute("member", service.findById(request.getParameter("keyword")));
			System.out.println("findById DB 검색 값"+service.findById(request.getParameter("keyword")));
			DispatcherServlet.send(request, response, Seperator.command);
		case "findByName"://
			System.out.println("findByName 분기문진입");
			request.setAttribute("list", service.findBy(request.getParameter("keyword")));
			DispatcherServlet.send(request, response, Seperator.command);
			break;
			
	
		case "count":
			System.out.println("case 카운트 진입");
			request.setAttribute("count", service.count());
			DispatcherServlet.send(request, response, Seperator.command);
			break;
		default:
			break;
		}
		
		

	}

	



		
		
		
		}

