package edu.tl.bo;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;

import edu.tl.dao.uCarDao;

import edu.tl.pojo.uCar;
@Service
public class uCarBoImpl implements uCarBo {
	
	@Resource(name="uCarDao")
	private uCarDao ucd;
	@Override
	public uCar queryCar(uCar ucar) {
		
		uCar ucars=ucd.queryCar(ucar);
		return ucars;
	}

	@Override
	public void alterCar(uCar ucar) {
		
		ucd.alterCar(ucar);
	}

	@Override
	public void addCar(uCar ucar) {
		ucd.addCar(ucar);

	}

	@Override
	public List<uCar> showAll(String account) {
		List<uCar> carlist=ucd.showAll(account);
		return carlist;
	}

	@Override
	public void deleteCar(uCar ucar) {
		ucd.deleteCar(ucar);
	}

}
