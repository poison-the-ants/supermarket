package edu.tl.dao;

import java.util.List;

import edu.tl.pojo.uCar;

public interface uCarDao {
	public uCar queryCar(uCar ucar);
	public void alterCar(uCar ucar);
	public void addCar(uCar ucar);
	public List<uCar> showAll(String account);
	public void deleteCar(uCar ucar);
}
