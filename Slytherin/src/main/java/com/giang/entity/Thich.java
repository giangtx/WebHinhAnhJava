package com.giang.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity(name="thich")
public class Thich {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int MaThich;
	
	@ManyToOne
	@JoinColumn(name="MaTaiKhoan")
	TaiKhoan taikhoan;
	
	@ManyToOne
	@JoinColumn(name="MaHinhAnh")
	HinhAnh hinhanh;
	
	int TrangThai;
	public int getMaThich() {
		return MaThich;
	}
	public void setMaThich(int maThich) {
		MaThich = maThich;
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
	public int getTrangThai() {
		return TrangThai;
	}
	public void setTrangThai(int trangThai) {
		TrangThai = trangThai;
	}
}
