package com.doan.converter;

import org.springframework.stereotype.Component;

import com.doan.dto.TourDTO;
import com.doan.entity.TourEntity;

@Component
public class TourConverter {
	
	public TourDTO toDto(TourEntity entity) {
		
		TourDTO result = new TourDTO();
		result.setId(entity.getId());
		result.setName(entity.getName());
		result.setThumbnail(entity.getThumbnail());
		result.setDeparture(entity.getDeparture());
		result.setArrival(entity.getArrival());
		result.setSeat(entity.getSeat());
		result.setHotel(entity.getHotel());
		result.setTourGuide(entity.getTourGuide());
		result.setDateAndTimeOfGathering(entity.getDateAndTimeOfGathering());
		result.setPlaceOfGathering(entity.getPlaceOfGathering());
		result.setPriceAdult(entity.getPriceAdult());		
		result.setSurchargeSingleRoom(entity.getSurchargeSingleRoom());
		result.setTourProgram(entity.getTourProgram());
		result.setCreatedBy(entity.getCreatedBy());
		result.setModifiedBy(entity.getModifiedBy());
		result.setCreatedDate(entity.getCreatedDate());
		
		result.setTourCategoryName(entity.getTourCategory().getName());
		result.setTourCategoryCode(entity.getTourCategory().getCode());		
		result.setProvinceName(entity.getProvince().getName());
		result.setProvinceCode(entity.getProvince().getCode());
		 
		return result;
	}

	public TourEntity toEntity(TourDTO tourDTO) {
		TourEntity result = new TourEntity();
		result.setName(tourDTO.getName());
		result.setThumbnail(tourDTO.getThumbnail());
		result.setDeparture(tourDTO.getDeparture());
		result.setArrival(tourDTO.getArrival());
		result.setSeat(tourDTO.getSeat());
		result.setHotel(tourDTO.getHotel());
		result.setTourGuide(tourDTO.getTourGuide());
		result.setDateAndTimeOfGathering(tourDTO.getDateAndTimeOfGathering());
		result.setPlaceOfGathering(tourDTO.getPlaceOfGathering());
		result.setPriceAdult(tourDTO.getPriceAdult());
		result.setSurchargeSingleRoom(tourDTO.getSurchargeSingleRoom());
		result.setTourProgram(tourDTO.getTourProgram());
		return result;
	}
	public TourEntity toEntity(TourEntity result, TourDTO tourDTO) {
		result.setName(tourDTO.getName());
		result.setThumbnail(tourDTO.getThumbnail());
		result.setDeparture(tourDTO.getDeparture());
		result.setArrival(tourDTO.getArrival());
		result.setSeat(tourDTO.getSeat());
		result.setHotel(tourDTO.getHotel());
		result.setTourGuide(tourDTO.getTourGuide());
		result.setDateAndTimeOfGathering(tourDTO.getDateAndTimeOfGathering());
		result.setPlaceOfGathering(tourDTO.getPlaceOfGathering());
		result.setPriceAdult(tourDTO.getPriceAdult());
		result.setSurchargeSingleRoom(tourDTO.getSurchargeSingleRoom());
		result.setTourProgram(tourDTO.getTourProgram());
		return result;
	}
}
