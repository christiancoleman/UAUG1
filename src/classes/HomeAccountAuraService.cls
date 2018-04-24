public with sharing class HomeAccountAuraService {
	private static AccountDAI accountAccessor = new AccountDA();
	public static AccountDAI AccountDI {private get; set{
		accountAccessor = value;
	}}

	@AuraEnabled
	public static List<Account> getLimitedAccounts(Integer limiter) {
		limiter = Integer.valueOf(limiter);
		return accountAccessor.queryLimitedAccounts(limiter);
	}
}