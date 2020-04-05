package com.giang.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity(name="bosuutap")
public class BoSuuTap {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int MaBoSuuTap;
	
	String TenBoSuuTap;
	String AnhBoSuuTap;
	String MoTa;
	
    @OneToMany(mappedBy = "bosuutap",fetch = FetchType.EAGER,cascade = CascadeType.ALL)
    private Set<HinhAnh> hinhanhs;
	
	public Set<HinhAnh> getHinhanhs() {
		return hinhanhs;
	}
	public void setHinhanhs(Set<HinhAnh> hinhanhs) {
		this.hinhanhs = hinhanhs;
	}
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
