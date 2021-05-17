package com.doan.api.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.doan.dto.ProvinceDTO;
import com.doan.service.IProvinceService;

@RestController(value = "provinceAPIOfAdmin")
public class ProvinceAPI {
	
	@Autowired
	private IProvinceService provinceService;

	@PostMapping("/api/province")
	public ProvinceDTO createProvince(@RequestBody ProvinceDTO provinceDTO) {
		return provinceService.save(provinceDTO);
	}

	@PutMapping("/api/peovince")
	public ProvinceDTO updateProvince(@RequestBody ProvinceDTO updateProvince) {
		return provinceService.save(updateProvince);
	}

	@DeleteMapping("/api/province")
	public void deleteProvince(@RequestBody Long[] ids) {
		provinceService.delete(ids);
	}

}
