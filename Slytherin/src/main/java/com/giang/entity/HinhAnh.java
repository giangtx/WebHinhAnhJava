package com.giang.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;


@Entity(name="hinhanh")
public class HinhAnh {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int MaHinhAnh;
	String TenHinhAnh;
	String KichCo;
	String DoPhanGiai;
	String MoTaHinhAnh;
	
	@ManyToOne
	@JoinColumn(name="MaBoSuuTap")
	BoSuuTap bosuutap;
	
	@ManyToOne
	@JoinColumn(name="MaTaiKhoan")
	TaiKhoan taikhoan;
	
	Integer AnhTaiTro;
	Integer PheDuyet;
	String Resize;
	String NgayDang;
	public int getMaHinhAnh() {
		return MaHinhAnh;
	}
	public void setMaHinhAnh(int maHinhAnh) {
		MaHinhAnh = maHinhAnh;
	}
	public String getTenHinhAnh() {
		return TenHinhAnh;
	}
	public void setTenHinhAnh(String tenHinhAnh) {
		TenHinhAnh = tenHinhAnh;
	}
	public String getKichCo() {
		return KichCo;
	}
	public void setKichCo(String kichCo) {
		KichCo = kichCo;
	}
	public String getDoPhanGiai() {
		return DoPhanGiai;
	}
	public void setDoPhanGiai(String doPhanGiai) {
		DoPhanGiai = doPhanGiai;
	}
	public String getMoTaHinhAnh() {
		return MoTaHinhAnh;
	}
	public void setMoTaHinhAnh(String moTaHinhAnh) {
		MoTaHinhAnh = moTaHinhAnh;
	}
	public BoSuuTap getBosuutap() {
		return bosuutap;
	}
	public void setBosuutap(BoSuuTap bosuutap) {
		this.bosuutap = bosuutap;
	}
	public TaiKhoan getTaikhoan() {
		return taikhoan;
	}
	public void setTaikhoan(TaiKhoan taikhoan) {
		this.taikhoan = taikhoan;
	}
	public int getAnhTaiTro() {
		return AnhTaiTro;
	}
	public void setAnhTaiTro(int anhTaiTro) {
		AnhTaiTro = anhTaiTro;
	}
	public int getPheDuyet() {
		return PheDuyet;
	}
	public void setPheDuyet(int pheDuyet) {
		PheDuyet = pheDuyet;
	}
	public String getResize() {
		return Resize;
	}
	public void setResize(String resize) {
		Resize = resize;
	}
	public String getNgayDang() {
		return NgayDang;
	}
	public void setNgayDang(String ngayDang) {
		NgayDang = ngayDang;
	}
	
}
