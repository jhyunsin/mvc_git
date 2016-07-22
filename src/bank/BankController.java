package bank;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet({"/bank/main.do","/bank/count.do","/bank/delete.do","/bank/deposit.do","/bank/list.do","/bank/regist.do",""
		+ "/bank/search.do","/bank/update.do","/bank/withdraw.do"})
public class BankController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("서블릿입장");
		String sPath = request.getServletPath();
		System.out.println("리퀘스트가 가져온 스블릿경로:"+sPath);
		String[] arr = sPath.split("/");
		String pkg =  arr[1];
		String view = arr[2].substring(0, arr[2].indexOf("."));
		RequestDispatcher dis = request.getRequestDispatcher("/WEB-INF/"+pkg+"/"+view+".jsp");
		dis.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
