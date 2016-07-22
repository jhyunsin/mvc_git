package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import global.Command;
import global.DispatcherServlet;
import global.Seperator;

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
		Seperator.init(request, response);
		
		MemberService service = MemberServiceImpl.getInstance();
		MemberBean member = new MemberBean();
		 switch (Seperator.command.getAction()) {
		 case "login":
			member.setId(request.getParameter("id"));
			member.setPw(request.getParameter("pw"));
			String nam = service.login(member);
			System.out.println("내임" + nam);
			if (nam.equals("")) {
				Seperator.command.setPage("login");
				Seperator.command.setView();
			
			}else {
				Seperator.command.setDirectory(request.getParameter("directory"));
				Seperator.command.setView();
				member.setName(nam);
				request.setAttribute("member", member);
			}
			 break;
		case "regist":
			System.out.println("레지스트  진입");
			member.setName(request.getParameter("name"));
			member.setId(request.getParameter("id"));
			member.setPw(request.getParameter("pw"));
			member.setSsn(request.getParameter("ssn"));
			member.setEmail(request.getParameter("email"));
			member.setRegDate();
			String result = service.regist(member);
			if (result.equals("")) {
				System.out.println("레지스트 분기문 진입");
				Seperator.command.setPage("regist");
				Seperator.command.setView();
			} else {
				Seperator.command.setDirectory(request.getParameter("directory"));
			
			}
			break;
		case "update":
			System.out.println("업데이트 진입");
			
			

			
			
			
			
			
			break;
		case "delete":
			member.setId(service.show().getId());
			member.setPw(request.getParameter("pw"));
			System.out.println(member.getPw());
			service.delete(member);
			
			break;
		case "detail":
			System.out.println("디테일 진입");
			request.setAttribute("detail", service.show());
			
			
			break;
		case "list"://
			
			break;
		case "logout":
			
			break;
		case "count":
			
			break;
		case "findBy"://
			
			break;
	
		default:
			break;
		}
		
		DispatcherServlet.send(request, response, Seperator.command);

	}

	



		
		
		
		}

