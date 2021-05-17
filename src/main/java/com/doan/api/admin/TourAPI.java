package com.doan.api.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.doan.dto.TourDTO;
import com.doan.service.ITourService;

@RestController(value = "tourAPIOfAdmin")
public class TourAPI {

	@Autowired
	private ITourService tourService;

	@PostMapping("/api/tour")
	public TourDTO createTour(@RequestBody TourDTO tourDTO) {
		return tourService.save(tourDTO);
	}

	@PutMapping("/api/tour")
	public TourDTO updateTour(@RequestBody TourDTO updateTour) {
		return tourService.save(updateTour);
	}

	@DeleteMapping("/api/tour")
	public void deleteTour(@RequestBody Long[] ids) {
		tourService.delete(ids);
	}

}
