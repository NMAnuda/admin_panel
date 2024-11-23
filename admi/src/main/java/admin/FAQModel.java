package admin;

public class FAQModel {
	private int faq_id;
	private String faq_content;

	public FAQModel(int faq_id, String faq_content) {
		super();
		this.faq_id = faq_id;
		this.faq_content = faq_content;
	}
	public int getFaq_id() {
		return faq_id;
	}
	public void setFaq_id(int faq_id) {
		this.faq_id = faq_id;
	}
	public String getFaq_content() {
		return faq_content;
	}
	public void setFaq_content(String faq_content) {
		this.faq_content = faq_content;
	}
	
	

	
}
