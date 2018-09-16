package edu.tl.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;

import edu.tl.bo.userBo;
import edu.tl.bo.userBoImpl;
import edu.tl.pojo.User;

public class userInfoManagerServlet extends HttpServlet {
	
	
	private static ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
	private static userBo ub=(userBo)context.getBean("userBoImpl");
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		this.doPost(request, response);
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		request.setCharacterEncoding("utf-8");
		String flag=request.getParameter("flag");
		if("u_login".equals(flag)){
			this.login(request,response);
		}else if("u_regist".equals(flag)){
			this.regist(request,response);
		}else if("u_logOut".equals(flag)){
			this.logOut(request,response);
		}
	}
	public void login(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		
		String code=request.getParameter("checkcode");
		HttpSession session=request.getSession();
		String sessioncode=(String)session.getAttribute("safecode");
		if(!(code.equals(sessioncode))){
			out.print("<script>alert('验证码输入错误!');window.location='index.jsp'</script>");
		}else{
			String account=request.getParameter("account");
			String password=request.getParameter("password");
			Map<String,Object> map=new HashMap<String,Object>();
			map.put("account", account);
			map.put("password", password);
			User user=ub.queryUserInfo(map);
			if(user!=null){
				Map<String,Object> mapOnline=new HashMap<String,Object>();
				mapOnline.put("onlines", 1);
				mapOnline.put("account", account);
				ub.updateUserInfo(mapOnline);
				session.setAttribute("account", account);
				session.setAttribute("nickname", user.getNickname());
				session.setAttribute("type", user.getType());
				session.setAttribute("onlines", user.getOnlines());
				response.sendRedirect("index.jsp");
				/*request.getRequestDispatcher("index.jsp").forward(request, response);*/
			}else{
				out.print("<script>alert('账号或密码输入错误!');window.location='index.jsp'</script>");
			}
		}
	}
	public void regist(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		
		String account=request.getParameter("account");
		User testUser=ub.selectByAccount(account);
		if(testUser!=null){
			out.print("<script>alert('该账号已经被注册!');window.location='register.jsp'</script>");
		}else{
			String password=request.getParameter("password");
			String sex=request.getParameter("sex");
			String nickname=request.getParameter("nickname");
			User user=new User();
			user.setAccount(account);
			user.setPassword(password);
			user.setSex(sex);
			user.setNickname(nickname);
			user.setType(0);
			user.setOnlines(0);
			ub.addUser(user);
			out.print("<script>alert('注册成功!');window.location='index.jsp'</script>");
		}
	}
	public void logOut(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		HttpSession session=request.getSession();
		String account=(String)session.getAttribute("account");
		Map<String,Object> mapOnline=new HashMap<String,Object>();
		mapOnline.put("onlines", 0);
		mapOnline.put("account", account);
		ub.updateUserInfo(mapOnline);
		session.invalidate();
		response.sendRedirect("index.jsp");
	}
}
