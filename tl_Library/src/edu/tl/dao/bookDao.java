package edu.tl.dao;

import java.util.List;
import java.util.Map;

import edu.tl.pojo.cBook;

public interface bookDao {
	public List<cBook> searchBook(Map map);
	public int searchCount(cBook cb);
}
