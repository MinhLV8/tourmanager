package com.doan.dto;

public class NewDTO extends AbstractDTO<NewDTO> {

	private String title;
	private String thumbnail;
	private String shortDes;
	private String content;
	private int view;
	private Long newCategoryId;
	private String newCategoryName;
	private String newCategoryCode;

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

	public Long getNewCategoryId() {
		return newCategoryId;
	}

	public void setNewCategoryId(Long newCategoryId) {
		this.newCategoryId = newCategoryId;
	}

	public String getNewCategoryName() {
		return newCategoryName;
	}

	public void setNewCategoryName(String newCategoryName) {
		this.newCategoryName = newCategoryName;
	}

	public String getNewCategoryCode() {
		return newCategoryCode;
	}

	public void setNewCategoryCode(String newCategoryCode) {
		this.newCategoryCode = newCategoryCode;
	}

}
