package com.doan.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.doan.dto.UserDTO;

public interface IUserService {
	List<UserDTO> findAll(Pageable pageable);
	int getTotalItem();
	UserDTO findById(long id);
	UserDTO save (UserDTO userDTO);
	void delete(Long[] ids);
	List<UserDTO> findByUserName(String userName, Pageable pageable);
	List<UserDTO> findByRoleCode(Pageable pageable);
}
