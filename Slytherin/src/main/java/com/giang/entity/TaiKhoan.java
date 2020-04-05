package com.giang.entity;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity(name="taikhoan")
public class TaiKhoan {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int MaTaiKhoan;
	
	@Column(unique=true)
	String TenDangNhap;
	String MatKhau;
	String Email;
	int Active;
	String Verification;
	String HoTen;
	String ThanhPho;
	String QuocGia;
	String GioiTinh;
	String NgaySinh;
	String AnhDaiDien;
	@ManyToOne
	@JoinColumn(name="MaChucVu")
	ChucVu chucvu;
	
	@OneToMany(mappedBy = "taikhoan",fetch = FetchType.EAGER)
	private Set<HinhAnh> hinhanhs;
	
	@OneToMany(mappedBy = "taikhoan",fetch = FetchType.EAGER)
    private Set<BinhLuan> binhluans;

    @OneToMany(mappedBy = "taikhoan",fetch = FetchType.EAGER)
    private Set<Thich> thiches;
	

	public Set<HinhAnh> getHinhanhs() {
		return hinhanhs;
	}
	public void setHinhanhs(Set<HinhAnh> hinhanhs) {
		this.hinhanhs = hinhanhs;
	}
	public Set<BinhLuan> getBinhluans() {
		return binhluans;
	}
	public void setBinhluans(Set<BinhLuan> binhluans) {
		this.binhluans = binhluans;
	}
	public Set<Thich> getThiches() {
		return thiches;
	}
	public void setThiches(Set<Thich> thiches) {
		this.thiches = thiches;
	}

	public int getMaTaiKhoan() {
		return MaTaiKhoan;
	}
	public void setMaTaiKhoan(int maTaiKhoan) {
		MaTaiKhoan = maTaiKhoan;
	}
	public String getTenDangNhap() {
		return TenDangNhap;
	}
	public void setTenDangNhap(String tenDangNhap) {
		TenDangNhap = tenDangNhap;
	}
	public String getMatKhau() {
		return MatKhau;
	}
	public void setMatKhau(String matKhau) {
		MatKhau = matKhau;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public int getActive() {
		return Active;
	}
	public void setActive(int active) {
		Active = active;
	}
	public String getVerification() {
		return Verification;
	}
	public void setVerification(String verification) {
		Verification = verification;
	}
	public ChucVu getChucVu() {
		return chucvu;
	}
	public void setChucVu(ChucVu chucVu) {
		this.chucvu = chucVu;
	}
	public String getAnhDaiDien() {
		return AnhDaiDien;
	}
	public void setAnhDaiDien(String anhDaiDien) {
		AnhDaiDien = anhDaiDien;
	}
	public String getHoTen() {
		return HoTen;
	}
	public void setHoTen(String hoTen) {
		HoTen = hoTen;
	}
	public String getThanhPho() {
		return ThanhPho;
	}
	public void setThanhPho(String thanhPho) {
		ThanhPho = thanhPho;
	}
	public String getQuocGia() {
		return QuocGia;
	}
	public void setQuocGia(String quocGia) {
		QuocGia = quocGia;
	}
	public String getGioiTinh() {
		return GioiTinh;
	}
	public void setGioiTinh(String gioiTinh) {
		GioiTinh = gioiTinh;
	}
	public String getNgaySinh() {
		return NgaySinh;
	}
	public void setNgaySinh(String ngaySinh) {
		NgaySinh = ngaySinh;
	}
	
}
