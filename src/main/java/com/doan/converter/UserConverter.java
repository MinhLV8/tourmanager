package com.doan.converter;

import org.springframework.stereotype.Component;

import com.doan.dto.UserDTO;
import com.doan.entity.UserEntity;

@Component
public class UserConverter {
	public UserDTO toDto(UserEntity entity) {
		UserDTO result = new UserDTO();
		result.setId(entity.getId());
		result.setUserName(entity.getUserName());
		result.setFullName(entity.getFullName());
		result.setAddress(entity.getAddress());
		result.setEmail(entity.getEmail());
		result.setGender(entity.getGender());
		result.setStatus(entity.getStatus());
		result.setPhoneNumber(entity.getPhoneNumber());
		/* result.setRoleCode(entity.getRoles().toString()); */
		return result;
	}

	public UserEntity toEntity(UserDTO userDTO) {
		UserEntity result = new UserEntity();
		result.setUserName(userDTO.getUserName());
		result.setFullName(userDTO.getFullName());
		result.setAddress(userDTO.getAddress());
		result.setEmail(userDTO.getEmail());
		result.setGender(userDTO.getGender());
		result.setStatus(userDTO.getStatus());
		result.setPhoneNumber(userDTO.getPhoneNumber());
		return result;
	}

	public UserEntity toEntity(UserEntity result,UserDTO userDTO) {
		result.setUserName(userDTO.getUserName());
		result.setFullName(userDTO.getFullName());
		result.setAddress(userDTO.getAddress());
		result.setEmail(userDTO.getEmail());
		result.setGender(userDTO.getGender());
		result.setStatus(userDTO.getStatus());
		result.setPhoneNumber(userDTO.getPhoneNumber());
		return result;
	}
}
