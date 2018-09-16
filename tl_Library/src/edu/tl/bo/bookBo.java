package edu.tl.bo;

import java.util.List;
import java.util.Map;

import edu.tl.pojo.cBook;

public interface bookBo {
	public List<cBook> searchBook(Map map);
	public int searchCount(cBook cb);
}
