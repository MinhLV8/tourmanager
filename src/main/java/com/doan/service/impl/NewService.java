package com.doan.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.doan.converter.NewConverter;
import com.doan.dto.NewDTO;
import com.doan.entity.NewCategoryEntity;
import com.doan.entity.NewEntity;
import com.doan.repository.NewCatRepository;
import com.doan.repository.NewRepository;
import com.doan.service.INewService;

@Service
public class NewService implements INewService {

	@Autowired
	private NewRepository newRepository;

	@Autowired
	private NewConverter newConverter;

	@Autowired
	private NewCatRepository newCatRepository;

	@Override
	public List<NewDTO> findAll(Pageable pageable) {
		List<NewDTO> models = new ArrayList<>();
		List<NewEntity> entities = newRepository.findAll(pageable).getContent();
		for (NewEntity item : entities) {
			NewDTO newDTO = newConverter.toDto(item);
			models.add(newDTO);
		}
		return models;
	}

	@Override
	public List<NewDTO> findByTitle(String title, Pageable pageable) {
		List<NewDTO> models = new ArrayList<>();
		List<NewEntity> entities = newRepository.findByTitleContaining(title, pageable);
		for (NewEntity item : entities) {
			NewDTO newDTO = newConverter.toDto(item);
			models.add(newDTO);
		}
		return models;
	}

	@Override
	public int getTotalItem() {
		return (int) newRepository.count();
	}
	
	@Override
	public NewDTO findById(long id) {
		NewEntity entity = newRepository.findOne(id);
		return newConverter.toDto(entity);
	}

	@Override
	@Transactional
	public NewDTO save(NewDTO newDTO) {
		NewCategoryEntity newCategory = newCatRepository.findOneByCode(newDTO.getNewCategoryCode());
		NewEntity newEntity = new NewEntity();
		if (newDTO.getId() != null) {
			NewEntity oldNew = newRepository.findOne(newDTO.getId());
			oldNew.setNewCategory(newCategory);
			newEntity = newConverter.toEntity(oldNew, newDTO);
		} else {
			newEntity = newConverter.toEntity(newDTO);
			newEntity.setNewCategory(newCategory);
		}
		return newConverter.toDto(newRepository.save(newEntity));
	}

	@Override
	@Transactional
	public void delete(Long[] ids) {
		for (long id : ids) {
			newRepository.delete(id);
		}
	}

	/*
	 * @Override
	 * 
	 * @Transactional public NewDTO insert(NewDTO newDTO) { NewCategoryEntity
	 * newCategory = newCatRepository.findOneByCode(newDTO.getNewCategoryCode());
	 * NewEntity newEntity = newConverter.toEntity(newDTO);
	 * newEntity.setNewCategory(newCategory); return
	 * newConverter.toDto(newRepository.save(newEntity)); }
	 * 
	 * @Override
	 * 
	 * @Transactional public NewDTO update(NewDTO newDTO) { NewCategoryEntity
	 * newCategory = newCatRepository.findOneByCode(newDTO.getNewCategoryCode());
	 * NewEntity oldNew = newRepository.findOne(newDTO.getId());
	 * oldNew.setNewCategory(newCategory); NewEntity updateNew =
	 * newConverter.toEntity(oldNew, newDTO); return
	 * newConverter.toDto(newRepository.save(updateNew)); }
	 */
}
