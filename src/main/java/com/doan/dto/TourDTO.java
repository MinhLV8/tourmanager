package com.doan.dto;

import java.math.BigDecimal;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class TourDTO extends AbstractDTO<TourDTO> {

	private String name;
	private String thumbnail;
	private Date departure;
	private Date arrival;
	private Integer seat;
	private String hotel;
	private String tourGuide;
	
	@JsonFormat(pattern="yyyy-MM-dd'T'HH:mm",timezone = "Asia/Ho_Chi_Minh") 
	private Date dateAndTimeOfGathering;
	private String placeOfGathering;
	private BigDecimal priceAdult;
	private BigDecimal surchargeSingleRoom;
	private String tourProgram;
	private Long tourCategoryId;
	private String tourCategoryName;
	private String tourCategoryCode;
	private Long provinceId;
	private String provinceName;
	private String provinceCode;

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

	public Date getDateAndTimeOfGathering() {
		return dateAndTimeOfGathering;
	}

	public void setDateAndTimeOfGathering(Date dateAndTimeOfGathering) {
		this.dateAndTimeOfGathering = dateAndTimeOfGathering;
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

	public Long getTourCategoryId() {
		return tourCategoryId;
	}

	public void setTourCategoryId(Long tourCategoryId) {
		this.tourCategoryId = tourCategoryId;
	}

	public String getTourCategoryName() {
		return tourCategoryName;
	}

	public void setTourCategoryName(String tourCategoryName) {
		this.tourCategoryName = tourCategoryName;
	}

	public String getTourCategoryCode() {
		return tourCategoryCode;
	}

	public void setTourCategoryCode(String tourCategoryCode) {
		this.tourCategoryCode = tourCategoryCode;
	}

	public Long getProvinceId() {
		return provinceId;
	}

	public void setProvinceId(Long provinceId) {
		this.provinceId = provinceId;
	}

	public String getProvinceName() {
		return provinceName;
	}

	public void setProvinceName(String provinceName) {
		this.provinceName = provinceName;
	}

	public String getProvinceCode() {
		return provinceCode;
	}

	public void setProvinceCode(String provinceCode) {
		this.provinceCode = provinceCode;
	}

}
