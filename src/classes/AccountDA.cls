public with sharing class AccountDA implements AccountDAI {
    public List<Account> queryLimitedAccounts(Integer limiter) {
        return [
                SELECT Name, BillingAddress, Description, Type, Phone, OwnerId, Owner.Name
                FROM Account
                ORDER BY CreatedDate ASC
                LIMIT :limiter];
    }
}