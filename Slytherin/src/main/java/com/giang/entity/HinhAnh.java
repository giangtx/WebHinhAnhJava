package com.giang.entity;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;


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
	
	@OneToMany(mappedBy = "hinhanh",fetch = FetchType.EAGER)
    private Set<BinhLuan> binhLuans;

    @OneToMany(mappedBy = "hinhanh",fetch = FetchType.EAGER)
    private Set<Thich> thichs;
	
	public Set<BinhLuan> getBinhLuans() {
		return binhLuans;
	}
	public void setBinhLuans(Set<BinhLuan> binhLuans) {
		this.binhLuans = binhLuans;
	}
	public Set<Thich> getThichs() {
		return thichs;
	}
	public void setThichs(Set<Thich> thichs) {
		this.thichs = thichs;
	}
	public void setAnhTaiTro(Integer anhTaiTro) {
		AnhTaiTro = anhTaiTro;
	}
	public void setPheDuyet(Integer pheDuyet) {
		PheDuyet = pheDuyet;
	}
	Integer AnhTaiTro;
	Integer PheDuyet;
	String Resize;
	String NgayDang;
	Integer likes;
	Integer comments;
	
	public Integer getLikes() {
		return likes;
	}
	public void setLikes(Integer likes) {
		this.likes = likes;
	}
	public Integer getComments() {
		return comments;
	}
	public void setComments(Integer comments) {
		this.comments = comments;
	}
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
