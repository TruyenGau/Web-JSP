package com.DAO;

import java.awt.print.Book;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.FlowerDtls;

public class FlowerDaoImpl implements FlowerDao {

	private Connection con;

	public FlowerDaoImpl(Connection con) {
		super();
		this.con = con;
	}

	public boolean addFlowers(FlowerDtls b) {
		boolean f = false;

		try {
			String sql = "insert into book_dtls (bookname, author, price, bookcategory, status, photo, email) values(?,?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, b.getFlowerName());
			ps.setString(2, b.getAuthor());
			ps.setString(3, b.getPrice());
			ps.setString(4, b.getBookCategory());
			ps.setString(5, b.getStatus());
			ps.setString(6, b.getPhotoName());
			ps.setString(7, b.getEmail());
			
			int i = ps.executeUpdate();
			if(i == 1) {
				f = true;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return f;
	}

	public List<FlowerDtls> getAllFlowers() {
		List<FlowerDtls> list = new ArrayList<FlowerDtls>();
		FlowerDtls b = null;
		try {
			String spl = "select * from book_dtls";
			PreparedStatement ps = con.prepareStatement(spl);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				b = new FlowerDtls();
				b.setFlowerId(rs.getInt(1));
				b.setFlowerName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoName(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

	public FlowerDtls getFlowerById(int id) {
		FlowerDtls b = null;
		try {
			String sql = "select * from book_dtls where bookId=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				b = new FlowerDtls();
				b.setFlowerId(rs.getInt(1));
				b.setFlowerName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoName(rs.getString(7));
				b.setEmail(rs.getString(8));
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return b;
	}

	public boolean updateFlower(FlowerDtls b) {
		boolean f = false;
		try {
			String sql = "update book_dtls set bookname=?, author=?, price=?, status=? where bookId=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, b.getFlowerName());
			ps.setString(2, b.getAuthor());
			ps.setString(3, b.getPrice());
			ps.setString(4, b.getStatus());	
			ps.setInt(5, b.getFlowerId());
			
			 int i = ps.executeUpdate();
			 if(i==1) {
				 f=true;
			 }
			 else {
				 f = false;
			 }
		} catch (Exception e) {
			// TODO: handle exception
		}
		return f;
	}

	public boolean deleteFlower(int id) {
		boolean f = false;
		try {
			String sql = "delete from book_dtls where bookId=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			int i = ps.executeUpdate();
			if(i==1)
			{
				f = true;
			}
			else 
			{
				f = false;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return f;
	}
//  lấy sản  phẩm thú bông
	public List<FlowerDtls> getThuBong() {
		List<FlowerDtls> list = new ArrayList<FlowerDtls>();
		FlowerDtls b = null;
		try {
			String sql = "select * from book_dtls where bookcategory=? order by bookId DESC";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, "thubong");
			ResultSet rs = ps.executeQuery();
			int i=1;
			while(rs.next() && i<=4) {
				b = new FlowerDtls();
				b.setFlowerId(rs.getInt(1));
				b.setFlowerName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoName(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);
				i++;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

	public List<FlowerDtls> getHoaBanChay() {
		List<FlowerDtls> list = new ArrayList<FlowerDtls>();
		FlowerDtls b = null;
		try {
			String sql = "select * from book_dtls where bookcategory=? order by bookId DESC";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, "hoabanchay");
			ResultSet rs = ps.executeQuery();
			int i=1;
			while(rs.next() && i<=4) {
				b = new FlowerDtls();
				b.setFlowerId(rs.getInt(1));
				b.setFlowerName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoName(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);
				i++;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	
	public List<FlowerDtls> getHoaTuLip() {
		List<FlowerDtls> list = new ArrayList<FlowerDtls>();
		FlowerDtls b = null;
		try {
			String sql = "select * from book_dtls where bookcategory=? order by bookId DESC";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, "hoatulip");
			ResultSet rs = ps.executeQuery();
			int i=1;
			while(rs.next() && i<=4) {
				b = new FlowerDtls();
				b.setFlowerId(rs.getInt(1));
				b.setFlowerName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoName(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);
				i++;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	
	public List<FlowerDtls> getHoaKhaiTruong(){
		List<FlowerDtls> list = new ArrayList<FlowerDtls>();
		FlowerDtls b = null;
		try {
			String sql = "select * from book_dtls where bookcategory=? order by bookId DESC";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, "hoakhaitruong");
			ResultSet rs = ps.executeQuery();
			int i=1;
			while(rs.next() && i<=4) {
				b = new FlowerDtls();
				b.setFlowerId(rs.getInt(1));
				b.setFlowerName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoName(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);
				i++;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	
	public List<FlowerDtls> getHoaTotNghiep(){
		List<FlowerDtls> list = new ArrayList<FlowerDtls>();
		FlowerDtls b = null;
		try {
			String sql = "select * from book_dtls where bookcategory=? order by bookId DESC";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, "hoatotnghiep");
			ResultSet rs = ps.executeQuery();
			int i=1;
			while(rs.next() && i<=4) {
				b = new FlowerDtls();
				b.setFlowerId(rs.getInt(1));
				b.setFlowerName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoName(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);
				i++;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	
	
	public List<FlowerDtls> getAllNewFlower() {
		List<FlowerDtls> list = new ArrayList<FlowerDtls>();
		FlowerDtls b = null;
		try {
			String sql = "select * from book_dtls where bookcategory=? and status=? order by bookId DESC";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, "hoabanchay");
			ps.setString(2,  "active");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				b = new FlowerDtls();
				b.setFlowerId(rs.getInt(1));
				b.setFlowerName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoName(rs.getString(7)); 
				b.setEmail(rs.getString(8));
				list.add(b);
			
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	
	public List<FlowerDtls> getAllThuBong() {
		List<FlowerDtls> list = new ArrayList<FlowerDtls>();
		FlowerDtls b = null;
		try {
			String sql = "select * from book_dtls where bookcategory=? and status=? order by bookId DESC";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, "thubong");
			ps.setString(2,  "active");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				b = new FlowerDtls();
				b.setFlowerId(rs.getInt(1));
				b.setFlowerName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoName(rs.getString(7)); 
				b.setEmail(rs.getString(8));
				list.add(b);
			
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

	public List<FlowerDtls> getAllTuLip() {
		List<FlowerDtls> list = new ArrayList<FlowerDtls>();
		FlowerDtls b = null;
		try {
			String sql = "select * from book_dtls where bookcategory=? and status=? order by bookId DESC";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, "hoatulip");
			ps.setString(2,  "active");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				b = new FlowerDtls();
				b.setFlowerId(rs.getInt(1));
				b.setFlowerName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoName(rs.getString(7)); 
				b.setEmail(rs.getString(8));
				list.add(b);
			
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	
	public List<FlowerDtls> getAllKhaiTruong() {
		List<FlowerDtls> list = new ArrayList<FlowerDtls>();
		FlowerDtls b = null;
		try {
			String sql = "select * from book_dtls where bookcategory=? and status=? order by bookId DESC";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, "hoakhaitruong");
			ps.setString(2,  "active");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				b = new FlowerDtls();
				b.setFlowerId(rs.getInt(1));
				b.setFlowerName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoName(rs.getString(7)); 
				b.setEmail(rs.getString(8));
				list.add(b);
			
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	
	public List<FlowerDtls> getAllTotNghiep() {
		List<FlowerDtls> list = new ArrayList<FlowerDtls>();
		FlowerDtls b = null;
		try {
			String sql = "select * from book_dtls where bookcategory=? and status=? order by bookId DESC";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, "hoatotnghiep");
			ps.setString(2,  "active");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				b = new FlowerDtls();
				b.setFlowerId(rs.getInt(1));
				b.setFlowerName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoName(rs.getString(7)); 
				b.setEmail(rs.getString(8));
				list.add(b);
			
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	
	public List<FlowerDtls> getAll() {
		List<FlowerDtls> list = new ArrayList<FlowerDtls>();
		FlowerDtls b = null;
		try {
			String sql = "select * from book_dtls";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				b = new FlowerDtls();
				b.setFlowerId(rs.getInt(1));
				b.setFlowerName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoName(rs.getString(7)); 
				b.setEmail(rs.getString(8));
				list.add(b);
			
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	
	public List<FlowerDtls> GetAllRecentFlower() {
		List<FlowerDtls> list = new ArrayList<FlowerDtls>();
		FlowerDtls b = null;
		try {
			String sql = "select * from book_dtls where status=? order by bookId DESC";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, "active");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				b = new FlowerDtls();
				b.setFlowerId(rs.getInt(1));
				b.setFlowerName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoName(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);
			
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

	public List<FlowerDtls> GetFlowerSearch(String search) {
		List<FlowerDtls> list = new ArrayList<FlowerDtls>();
		FlowerDtls b = null;
		try {
			String sql = "select * from book_dtls where bookname like ? or author like ? or bookCategory like ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, "%"+search+"%");
			ps.setString(2, "%"+search+"%");
			ps.setString(3, "%"+search+"%");
			ResultSet rs = ps.executeQuery();
			int i=1;
			while(rs.next() && i<=4) {
				b = new FlowerDtls();
				b.setFlowerId(rs.getInt(1));
				b.setFlowerName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoName(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);
				i++;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	

}
