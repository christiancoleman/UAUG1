public with sharing class ContactDA implements ContactDAI {
	public List<Contact> queryLimitedContacts(Integer limiter) {
		return [
				SELECT Name, Title, Phone, Email
				FROM Contact
				ORDER BY CreatedDate ASC
				LIMIT :limiter];
	}
}