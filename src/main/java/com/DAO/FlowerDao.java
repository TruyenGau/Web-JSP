package com.DAO;

import java.awt.print.Book;
import java.util.List;

import com.entity.FlowerDtls;

public interface FlowerDao {
	public boolean addFlowers(FlowerDtls b);
	
	public List<FlowerDtls> getAllFlowers();
	public FlowerDtls getFlowerById(int id);
	
	public boolean updateFlower(FlowerDtls b);
	
	public boolean deleteFlower(int id);
	public List<FlowerDtls> getThuBong();
	public List<FlowerDtls> getHoaBanChay();
	public List<FlowerDtls> getHoaTuLip();
	public List<FlowerDtls> getHoaKhaiTruong();
	public List<FlowerDtls> getHoaTotNghiep();
	public List<FlowerDtls> getAllThuBong();
	public List<FlowerDtls> getAllNewFlower();
	
	public List<FlowerDtls> getAllTuLip();
	public List<FlowerDtls> getAllKhaiTruong();
	public List<FlowerDtls> getAllTotNghiep();
	public List<FlowerDtls> getAll();
	public List<FlowerDtls> GetAllRecentFlower();
	public List<FlowerDtls> GetFlowerSearch(String search);
}
