package com.example.thingbee_android.retorift;
import com.google.gson.annotations.SerializedName;

import lombok.Data;

@Data
public class ArticleInfoVO {
	@SerializedName("code")
	private String code;
	@SerializedName("title")
	private String title;
	@SerializedName("pressName")
	private String pressName;
	@SerializedName("summary")
	private String summary;
	@SerializedName("articleTime")
	private String articleTime;
	@SerializedName("viewCnt")
	private int viewCnt;
	@SerializedName("url")
	private String url;
	@SerializedName("imgURL")
	private String imgURL;
	@SerializedName("districtName")
	private String districtName;
	@SerializedName("keywordName")
	private String keywordName;
	
	public ArticleInfoVO() {
		
	}
	public ArticleInfoVO(String code, String title, String pressName, String summary, String articleTime,
						 int viewCnt, String url, String imgURL, String districtName, String keywordName) {
		this.code=code;
		this.title=title;
		this.pressName=pressName;
		this.summary=summary;
		this.articleTime=articleTime;
		this.viewCnt=viewCnt;
		this.url = url;
		this.imgURL=imgURL;
		this.districtName=districtName;
		this.keywordName=keywordName;
	}

	public String toString() {
		return "ArticleInfo [code=" + code + ", title=" + title + ", pressName=" + pressName + ", summary=" + summary
				+ ", articleTime=" + articleTime + ", viewCnt=" + viewCnt + ", URL=" + url + ", imgURL=" + imgURL
				+ ", districtName=" + districtName + ", keywordName=" + keywordName + "]";
	}

	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((url == null) ? 0 : url.hashCode());
		result = prime * result + ((articleTime == null) ? 0 : articleTime.hashCode());
		result = prime * result + ((code == null) ? 0 : code.hashCode());
		result = prime * result + ((districtName == null) ? 0 : districtName.hashCode());
		result = prime * result + ((imgURL == null) ? 0 : imgURL.hashCode());
		result = prime * result + ((keywordName == null) ? 0 : keywordName.hashCode());
		result = prime * result + ((pressName == null) ? 0 : pressName.hashCode());
		result = prime * result + ((summary == null) ? 0 : summary.hashCode());
		result = prime * result + ((title == null) ? 0 : title.hashCode());
		result = prime * result + viewCnt;
		return result;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPressName() {
		return pressName;
	}

	public void setPressName(String pressName) {
		this.pressName = pressName;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getArticleTime() {
		return articleTime;
	}

	public void setArticleTime(String articleTime) {
		this.articleTime = articleTime;
	}

	public int getViewCnt() {
		return viewCnt;
	}

	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getImgURL() {
		return imgURL;
	}

	public void setImgURL(String imgURL) {
		this.imgURL = imgURL;
	}

	public String getDistrictName() {
		return districtName;
	}

	public void setDistrictName(String districtName) {
		this.districtName = districtName;
	}

	public String getKeywordName() {
		return keywordName;
	}

	public void setKeywordName(String keywordName) {
		this.keywordName = keywordName;
	}

	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ArticleInfoVO other = (ArticleInfoVO) obj;
		if (url == null) {
			if (other.url != null)
				return false;
		} else if (!url.equals(other.url))
			return false;
		if (articleTime == null) {
			if (other.articleTime != null)
				return false;
		} else if (!articleTime.equals(other.articleTime))
			return false;
		if (code == null) {
			if (other.code != null)
				return false;
		} else if (!code.equals(other.code))
			return false;
		if (districtName == null) {
			if (other.districtName != null)
				return false;
		} else if (!districtName.equals(other.districtName))
			return false;
		if (imgURL == null) {
			if (other.imgURL != null)
				return false;
		} else if (!imgURL.equals(other.imgURL))
			return false;
		if (keywordName == null) {
			if (other.keywordName != null)
				return false;
		} else if (!keywordName.equals(other.keywordName))
			return false;
		if (pressName == null) {
			if (other.pressName != null)
				return false;
		} else if (!pressName.equals(other.pressName))
			return false;
		if (summary == null) {
			if (other.summary != null)
				return false;
		} else if (!summary.equals(other.summary))
			return false;
		if (title == null) {
			if (other.title != null)
				return false;
		} else if (!title.equals(other.title))
			return false;
		if (viewCnt != other.viewCnt)
			return false;
		return true;
	}
	
}
