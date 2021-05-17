package com.doan.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.domain.AuditorAware;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

@Configuration
@EnableJpaAuditing(auditorAwareRef = "auditorProvider")
public class JpaAuditingConfig {
	
	@Bean
	public AuditorAware<String> auditorProvider() {
		return new AuditorAwareImpl();
	}
	public static class AuditorAwareImpl implements AuditorAware<String>{

		@Override
		public String getCurrentAuditor() { //get thông tin session username
			Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
			if(authentication == null) {
				return null;
			}			
			return authentication.getName();//trả về username trong session lúc user đăng nhập
		}
	}
}
