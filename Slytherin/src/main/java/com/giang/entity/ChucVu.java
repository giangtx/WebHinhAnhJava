package com.giang.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="chucvu")
public class ChucVu {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int MaChucVu;
	String TenChucVu;
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
