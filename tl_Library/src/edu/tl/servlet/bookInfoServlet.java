package edu.tl.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.tl.bo.bookBo;
import edu.tl.bo.userBo;
import edu.tl.pojo.cBook;

public class bookInfoServlet extends HttpServlet{
	
	private static final String xmlPath="applicationContext.xml";
	private static ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext(xmlPath);
	private static bookBo bi=(bookBo)context.getBean("bookBoImpl");
	
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		this.doPost(request, response);
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		request.setCharacterEncoding("utf-8");
		String flag=request.getParameter("flag");
		if("u_searchBook".equals(flag)){
			this.searchBook(request,response);
		}
	}
	
	public void searchBook(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		String infoList=request.getParameter("infoList");
		request.setAttribute("infoList", infoList);
		String[] infos=infoList.split(":");
		cBook cbook=new cBook();
		cbook.setFid(infos[0]);
		cbook.setCid(infos[1]);
		cbook.setSid(infos[2]);
		int bookCount=bi.searchCount(cbook);
		request.setAttribute("bookCount", bookCount);
		int pageSize=Integer.parseInt(getServletContext().getInitParameter("pageSize"));
		int pages;
		if((bookCount%pageSize)==0){
			pages=bookCount/pageSize;
		}else{
			pages=(bookCount/pageSize)+1;
		}
		int pageNum=1;
		if(request.getParameter("pageNum")!=null){
            pageNum=Integer.parseInt(request.getParameter("pageNum"));
            if(pageNum<=1){
            	pageNum=1;
            }else if(pageNum>pages){
            	pageNum=pages;
            }
		}
		request.setAttribute("pageNum", pageNum);
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("Fid", infos[0]);
		map.put("Cid", infos[1]);
		map.put("Sid", infos[2]);
		map.put("RowNum", pageNum*pageSize);
		map.put("RN",(pageNum-1)*pageSize+1);
		List<cBook> listBook=new ArrayList<cBook>();
		listBook=bi.searchBook(map);
		request.setAttribute("listBook", listBook);
		request.getRequestDispatcher("searchBook.jsp").forward(request, response);
	}
}
