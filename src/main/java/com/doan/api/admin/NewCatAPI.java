package com.doan.api.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.doan.dto.NewCatDTO;
import com.doan.service.INewCatService;

@RestController(value = "newCatAPIOfAdmin")
public class NewCatAPI {
	
	@Autowired
	private INewCatService newCatService;

	@PostMapping("/api/newcat")
	public NewCatDTO createCat(@RequestBody NewCatDTO newCatDTO) {		
		return newCatService.save(newCatDTO);
	}

	@PutMapping("/api/newcat")
	public NewCatDTO updateCat(@RequestBody NewCatDTO updateCat) {	
		return newCatService.save(updateCat);
	}

	@DeleteMapping("/api/newcat")
	public void deleteCat(@RequestBody Long[] ids) {
		newCatService.delete(ids);
	}
}
