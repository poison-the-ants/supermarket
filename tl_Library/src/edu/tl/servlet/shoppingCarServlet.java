package edu.tl.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import edu.tl.bo.uCarBo;
import edu.tl.bo.uCarBoImpl;
import edu.tl.pojo.uCar;

public class shoppingCarServlet extends HttpServlet {
	
	private static final String xmlPath="applicationContext.xml";
	private static ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext(xmlPath);
	private static uCarBo uc=(uCarBo)context.getBean("uCarBoImpl");
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		this.doPost(request, response);
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		request.setCharacterEncoding("utf-8");
		String flag=request.getParameter("flag");
		if("u_addCar".equals(flag)){
			this.addCar(request,response);
		}else if("u_showCar".equals(flag)){
			this.showCar(request,response);
		}else if("u_carCount".equals(flag)){
			this.carCount(request,response);
		}else if("u_deleteCar".equals(flag)){
			this.deleteCar(request,response);
		}
	}
	public void addCar(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		
		HttpSession session=request.getSession();
		String account=(String)session.getAttribute("account");
		if(account==null){
			out.print("<script>alert('请先登录');window.location='detail.jsp'</script>");
		}
		String addInfo=request.getParameter("addInfo");
		String[] goods=addInfo.split(":");
		uCar ucar=new uCar();
		ucar.setBname(goods[0]);;
		ucar.setAuthor(goods[1]);
		ucar.setPaper(goods[2]);
		ucar.setPrice(Float.parseFloat(goods[3]));
		ucar.setBcount(Integer.parseInt(goods[4]));
		ucar.setAccount(account);
		uCar cars=uc.queryCar(ucar);
		if(cars!=null){
			int addCount=ucar.getBcount();
			int count=cars.getBcount();
			int newCount=addCount+count;
			cars.setBcount(newCount);
			uc.alterCar(cars);
			out.print("<script>alert('商品已添加到购物车');window.location='detail.jsp'</script>");
		}else{
			uc.addCar(ucar);
			out.print("<script>alert('商品已添加到购物车');window.location='detail.jsp'</script>");
		}
	}
	public void showCar(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		
		HttpSession session=request.getSession();
		String account=(String)session.getAttribute("account");
		List<uCar> carList=uc.showAll(account);
		request.setAttribute("carList",carList);
		request.getRequestDispatcher("carList.jsp").forward(request, response);
	}
	public void deleteCar(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		
		String info=(String)request.getParameter("info");
		String[] goods=info.split(":");
		uCar ucar=new uCar();
		ucar.setBname(goods[0]);
		ucar.setAuthor(goods[1]);
		ucar.setPaper(goods[2]);
		ucar.setAccount(goods[3]);
		uc.deleteCar(ucar);
		out.print("<script>alert('商品删除成功');window.location='carList.jsp'</script>");
	}
	public void carCount(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		
		HttpSession session=request.getSession();
		String account=(String)session.getAttribute("account");
		List<uCar> carList=uc.showAll(account);
		int counts=0;
		for(int i=0;i<carList.size();i++){
			uCar car=carList.get(i);
			counts+=car.getBcount();
		}
		request.setAttribute("counts", counts);
		request.getRequestDispatcher("carCount.jsp").forward(request, response);
	}
}
