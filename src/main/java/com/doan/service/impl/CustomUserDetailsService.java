package com.doan.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.doan.constant.SystemConstant;
import com.doan.dto.MyUser;
import com.doan.entity.RoleEntity;
import com.doan.entity.UserEntity;
import com.doan.repository.UserRepository;

@Service
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	private UserRepository userRepository;

	//đã load ngầm password rồi
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		UserEntity userEntity = userRepository.findOneByUserNameAndStatus(username, SystemConstant.ACTIVE_STATUS);

		if (userEntity == null) {
			throw new UsernameNotFoundException("user not found");
		}
		List<GrantedAuthority> authorities = new ArrayList<>();
		for (RoleEntity roles : userEntity.getRoles()) {
			authorities.add(new SimpleGrantedAuthority(roles.getRoleCode()));
		}
		// put thong tin vao trong security de duy tri thong tin do khi user login vao he thong
		MyUser myUser = new MyUser(userEntity.getUserName(), userEntity.getPassWord(), true, true, true, true,authorities);
		myUser.setFullName(userEntity.getFullName());
		myUser.setEmail(userEntity.getEmail());
		myUser.setAddress(userEntity.getAddress());
		myUser.setPhoneNumber(userEntity.getPhoneNumber());
		myUser.setGender(userEntity.getGender());
		return myUser;
	}

}
