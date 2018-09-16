package edu.tl.bo;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;

import edu.tl.dao.bookDao;
import edu.tl.dao.uCarDao;
import edu.tl.pojo.cBook;
@Service
public class bookBoImpl implements bookBo {
	@Resource(name="bookDao")
	private bookDao bd;
	
	@Override
	public List<cBook> searchBook(Map map) {
		List<cBook> list=bd.searchBook(map);
		return list;
	}

	@Override
	public int searchCount(cBook cb) {
		int count=bd.searchCount(cb);
		return count;
	}
	
}
