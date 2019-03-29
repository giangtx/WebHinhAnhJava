package com.giang.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity(name="binhluan")
public class BinhLuan {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int MaTuongTac;
	
	@ManyToOne
	@JoinColumn(name="MaTaiKhoan")
	TaiKhoan taikhoan;
	
	@ManyToOne
	@JoinColumn(name="MaHinhAnh")
	HinhAnh hinhanh;
	
	String BinhLuan;
	public int getMaTuongTac() {
		return MaTuongTac;
	}
	public void setMaTuongTac(int maTuongTac) {
		MaTuongTac = maTuongTac;
	}
	public TaiKhoan getTaikhoan() {
		return taikhoan;
	}
	public void setTaikhoan(TaiKhoan taikhoan) {
		this.taikhoan = taikhoan;
	}
	public HinhAnh getHinhanh() {
		return hinhanh;
	}
	public void setHinhanh(HinhAnh hinhanh) {
		this.hinhanh = hinhanh;
	}
	public String getBinhLuan() {
		return BinhLuan;
	}
	public void setBinhLuan(String binhLuan) {
		BinhLuan = binhLuan;
	}
	
}
