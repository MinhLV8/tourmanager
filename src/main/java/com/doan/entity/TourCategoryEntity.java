package com.doan.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "loaitour")
public class TourCategoryEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Column(name = "tenloai")
	private String name;

	@Column(name = "maloai")
	private String code;

	@OneToMany(mappedBy = "tourCategory", cascade = CascadeType.ALL) // Quan hệ 1-n với đối tượng ở dưới (tour) (1 loại tour																	// có nhiều tour)
	// MapopedBy trỏ tới tên biến loaitour ở trong tour.
	private List<TourEntity> tours = new ArrayList<>();

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public List<TourEntity> getTours() {
		return tours;
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

	public void setTours(List<TourEntity> tours) {
		this.tours = tours;
	}

}
