package edu.tl.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.tl.bo.bookBo;
import edu.tl.pojo.cBook;

@Controller
@RequestMapping("/bc")
public class bookController {
	@Resource(name="bookBoImpl")
	private bookBo bi;
	@RequestMapping("/searchBook.action")
	public void searchBook(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		System.out.println("hello world");
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
		int pageSize=6;
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
		request.getRequestDispatcher("../searchBook.jsp").forward(request, response);
	}
}
