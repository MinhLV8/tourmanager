package com.doan.api.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.doan.dto.TourCatDTO;
import com.doan.service.ITourCatService;

@RestController(value = "tourCatAPIOfAdmin")
public class TourCatAPI {

	@Autowired
	private ITourCatService tourCatService;

	@PostMapping("/api/tourcat")
	public TourCatDTO createCat(@RequestBody TourCatDTO tourCatDTO) {
		return tourCatService.save(tourCatDTO);
	}

	@PutMapping("/api/tourcat")
	public TourCatDTO updateCat(@RequestBody TourCatDTO updateCat) {
		return tourCatService.save(updateCat);
	}

	@DeleteMapping("/api/tourcat")
	public void deleteCat(@RequestBody Long[] ids) {
		tourCatService.delete(ids);
	}

}
