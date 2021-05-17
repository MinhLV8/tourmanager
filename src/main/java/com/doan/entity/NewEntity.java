package com.doan.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "tintuc")
public class NewEntity extends BaseEntity {

	@Column(name = "tieude", nullable = false)
	private String title;

	@Column(name = "hinhanh")
	private String thumbnail;

	@Column(name = "mota",length = 500)
	private String shortDes;

	@Column(name = "noidung", columnDefinition = "LONGTEXT")
	private String content;

	@Column(name = "luotxem")
	private int view;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "loaitintuc_id")
	private NewCategoryEntity newCategory;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public String getShortDes() {
		return shortDes;
	}

	public void setShortDes(String shortDes) {
		this.shortDes = shortDes;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getView() {
		return view;
	}

	public void setView(int view) {
		this.view = view;
	}

	public NewCategoryEntity getNewCategory() {
		return newCategory;
	}

	public void setNewCategory(NewCategoryEntity newCategory) {
		this.newCategory = newCategory;
	}

}
