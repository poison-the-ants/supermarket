package edu.tl.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.tl.bo.uCarBo;
import edu.tl.pojo.uCar;

@Controller
@RequestMapping("/cc")
public class carController {
	@Resource(name="uCarBoImpl")
	private uCarBo uc;
	@RequestMapping("/addCar.action")
	public void addCar(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		
		HttpSession session=request.getSession();
		String account=(String)session.getAttribute("account");
		if(account==null){
			out.print("<script>alert('请先登录');window.location='../detail.jsp'</script>");
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
			out.print("<script>alert('商品已添加到购物车');window.location='../detail.jsp'</script>");
		}else{
			uc.addCar(ucar);
			out.print("<script>alert('商品已添加到购物车');window.location='../detail.jsp'</script>");
		}
	}
	@RequestMapping("/showCar.action")
	public void showCar(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		
		HttpSession session=request.getSession();
		String account=(String)session.getAttribute("account");
		List<uCar> carList=uc.showAll(account);
		request.setAttribute("carList",carList);
		/*response.sendRedirect("../carList.jsp");*/
		request.getRequestDispatcher("/carList.jsp").forward(request, response);
	}
	@RequestMapping("/deleteCar.action")
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
		out.print("<script>alert('商品删除成功');window.location='../carList.jsp'</script>");
	}
	@RequestMapping("/carCount.action")
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
		request.getRequestDispatcher("../carCount.jsp").forward(request, response);
	}
}
