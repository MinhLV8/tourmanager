package com.doan.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.doan.converter.UserConverter;
import com.doan.dto.UserDTO;
import com.doan.entity.UserEntity;
import com.doan.repository.UserRepository;
import com.doan.service.IUserService;

@Service
public class UserService implements IUserService {

	@Autowired
	private UserRepository userRepository;

	/*
	 * @Autowired private RoleRepository roleRepository;
	 */

	@Autowired
	private UserConverter userConverter;

	@Override
	public List<UserDTO> findAll(Pageable pageable) {
		List<UserDTO> models = new ArrayList<>();
		List<UserEntity> entities = userRepository.findAll(pageable).getContent();
		for (UserEntity item : entities) {
			UserDTO newDTO = userConverter.toDto(item);
			models.add(newDTO);
		}
		return models;
	}

	@Override
	public List<UserDTO> findByUserName(String userName, Pageable pageable) {
		List<UserDTO> models = new ArrayList<>();
		List<UserEntity> entities = userRepository.findByUserNameContaining(userName);
		for (UserEntity item : entities) {
			UserDTO newDTO = userConverter.toDto(item);
			models.add(newDTO);
		}
		return models;
	}

	@Override
	public int getTotalItem() {
		return (int) userRepository.count();
	}

	@Override
	public UserDTO findById(long id) {
		UserEntity entity = userRepository.findOne(id);
		return userConverter.toDto(entity);
	}

	@Override
	@Transactional
	public UserDTO save(UserDTO userDTO) {
		// RoleEntity role = roleRepository.findOneByCode(userDTO.getRoleCode());
		UserEntity userEntity = new UserEntity();
		if (userDTO.getId() != null) {
			UserEntity oldUser = userRepository.findOne(userDTO.getId());
			/* oldUser.setRoles(role); */
			userEntity = userConverter.toEntity(oldUser, userDTO);
		} else {
			userEntity = userConverter.toEntity(userDTO);
			/* userEntity.setRoles(role); */
		}
		return userConverter.toDto(userRepository.save(userEntity));
	}

	@Override
	@Transactional
	public void delete(Long[] ids) {
		for (long id : ids) {
			userRepository.delete(id);
		}
	}

	@Override
	public List<UserDTO> findByRoleCode(Pageable pageable) {
		List<UserDTO> models = new ArrayList<>();
		List<UserEntity> entities = userRepository.findByGender("0");
		for (UserEntity item : entities) {
			UserDTO newDTO = userConverter.toDto(item);
			models.add(newDTO);
		}
		return models;
	}

}
