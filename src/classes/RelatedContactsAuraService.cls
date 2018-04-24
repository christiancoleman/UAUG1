public with sharing class RelatedContactsAuraService {
	private static ContactDAI contactAccessor = new ContactDA();
	public static ContactDAI ContactDI {private get; set{
		contactAccessor = value;
	}}

	@AuraEnabled
	public static List<Contact> getLimitedContacts(Integer limiter) {
		limiter = Integer.valueOf(limiter);
		return contactAccessor.queryLimitedContacts(limiter);
	}
}