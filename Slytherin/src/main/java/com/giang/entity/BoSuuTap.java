package com.giang.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="bosuutap")
public class BoSuuTap {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int MaBoSuuTap;
	
	String TenBoSuuTap;
	String AnhBoSuuTap;
	String MoTa;
	public int getMaBoSuuTap() {
		return MaBoSuuTap;
	}
	public void setMaBoSuuTap(int maBoSuuTap) {
		MaBoSuuTap = maBoSuuTap;
	}
	public String getTenBoSuuTap() {
		return TenBoSuuTap;
	}
	public void setTenBoSuuTap(String tenBoSuuTap) {
		TenBoSuuTap = tenBoSuuTap;
	}
	public String getAnhBoSuuTap() {
		return AnhBoSuuTap;
	}
	public void setAnhBoSuuTap(String anhBoSuuTap) {
		AnhBoSuuTap = anhBoSuuTap;
	}
	public String getMoTa() {
		return MoTa;
	}
	public void setMoTa(String moTa) {
		MoTa = moTa;
	}
	
}
