package com.doan.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "tinhthanh")
public class ProvinceEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Column(name = "tentinh")
	private String name;

	@Column(name = "matinh")
	private String code;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "quocgia_id")
	private CountryEntity country;

	@OneToMany(mappedBy = "province", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<TourEntity> tours = new ArrayList<>();

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public CountryEntity getCountry() {
		return country;
	}

	public void setCountry(CountryEntity country) {
		this.country = country;
	}

	public List<TourEntity> getTours() {
		return tours;
	}

	public void setTours(List<TourEntity> tours) {
		this.tours = tours;
	}

}
