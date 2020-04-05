package com.giang.entity;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity(name="chucvu")
public class ChucVu {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int MaChucVu;
	String TenChucVu;
	@OneToMany(mappedBy = "chucvu",fetch = FetchType.EAGER)
    private Set<TaiKhoan> taiKhoans;
	
	public Set<TaiKhoan> getTaiKhoans() {
		return taiKhoans;
	}
	public void setTaiKhoans(Set<TaiKhoan> taiKhoans) {
		this.taiKhoans = taiKhoans;
	}

	
	public int getMaChucVu() {
		return MaChucVu;
	}
	public void setMaChucVu(int maChucVu) {
		MaChucVu = maChucVu;
	}
	public String getTenChucVu() {
		return TenChucVu;
	}
	public void setTenChucVu(String tenChucVu) {
		TenChucVu = tenChucVu;
	}
}
