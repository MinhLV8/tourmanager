package com.doan.entity;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name = "tour")
public class TourEntity extends BaseEntity {

	@Column(name = "tentour", nullable = false)
	private String name;

	@Column(name = "hinhanh")
	private String thumbnail;

	@Column(name = "ngaykhoihanh", nullable = false, columnDefinition = "date")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date departure;

	@Column(name = "ngayve", nullable = false, columnDefinition = "date")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date arrival;

	@Column(name = "socho", length = 2, nullable = false)
	private Integer seat;

	@Column(name = "khachsan")
	private String hotel;

	@Column(name = "huongdanvien")
	private String tourGuide;

	@Column(name = "ngaygiott", nullable = false, columnDefinition = "datetime")
	/* @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm") */
	@JsonFormat(pattern="yyyy-MM-dd HH:mm")
	private Date dateAndTimeOfGathering;

	@Column(name = "noitaptrung")
	private String placeOfGathering;

	@Column(name = "gianguoilon", nullable = false, columnDefinition = "decimal(19,3)")
	private BigDecimal priceAdult;

	@Column(name = "phuthuphongdon", columnDefinition = "decimal(19,3)")
	private BigDecimal surchargeSingleRoom;

	@Column(name = "lichtrinhtour", columnDefinition = "LONGTEXT")
	private String tourProgram;

	@Column(name = "trangthai")
	private Integer status;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "loaitour_id")
	private TourCategoryEntity tourCategory;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "tinh_id")
	private ProvinceEntity province;

	@OneToMany(mappedBy = "tour", cascade = CascadeType.ALL)
	private List<TourBookingEntity> tourBookings = new ArrayList<>();

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public Date getDeparture() {
		return departure;
	}

	public void setDeparture(Date departure) {
		this.departure = departure;
	}

	public Date getArrival() {
		return arrival;
	}

	public void setArrival(Date arrival) {
		this.arrival = arrival;
	}

	public Integer getSeat() {
		return seat;
	}

	public void setSeat(Integer seat) {
		this.seat = seat;
	}

	public String getHotel() {
		return hotel;
	}

	public void setHotel(String hotel) {
		this.hotel = hotel;
	}

	public String getTourGuide() {
		return tourGuide;
	}

	public void setTourGuide(String tourGuide) {
		this.tourGuide = tourGuide;
	}

	public Date getDateAndTimeOfGathering() {
		return dateAndTimeOfGathering;
	}

	public void setDateAndTimeOfGathering(Date dateAndTimeOfGathering) {
		this.dateAndTimeOfGathering = dateAndTimeOfGathering;
	}

	public String getPlaceOfGathering() {
		return placeOfGathering;
	}

	public void setPlaceOfGathering(String placeOfGathering) {
		this.placeOfGathering = placeOfGathering;
	}

	public BigDecimal getPriceAdult() {
		return priceAdult;
	}

	public void setPriceAdult(BigDecimal priceAdult) {
		this.priceAdult = priceAdult;
	}

	public BigDecimal getSurchargeSingleRoom() {
		return surchargeSingleRoom;
	}

	public void setSurchargeSingleRoom(BigDecimal surchargeSingleRoom) {
		this.surchargeSingleRoom = surchargeSingleRoom;
	}

	public String getTourProgram() {
		return tourProgram;
	}

	public void setTourProgram(String tourProgram) {
		this.tourProgram = tourProgram;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public TourCategoryEntity getTourCategory() {
		return tourCategory;
	}

	public void setTourCategory(TourCategoryEntity tourCategory) {
		this.tourCategory = tourCategory;
	}

	public ProvinceEntity getProvince() {
		return province;
	}

	public void setProvince(ProvinceEntity province) {
		this.province = province;
	}

	public List<TourBookingEntity> getTourBookings() {
		return tourBookings;
	}

	public void setTourBookings(List<TourBookingEntity> tourBookings) {
		this.tourBookings = tourBookings;
	}

}
