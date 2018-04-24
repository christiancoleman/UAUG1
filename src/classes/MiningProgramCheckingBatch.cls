public with sharing class MiningProgramCheckingBatch implements Database.Batchable<Sobject>{

    public Database.QueryLocator start(Database.BatchableContext BC){
        String query = 'SELECT Id, CreatedDate FROM Mining_Log__c ORDER BY CreatedDate LIMIT 1';

        return Database.getQueryLocator(query);
    }

    public void execute(Database.BatchableContext context, List<Mining_Log__c> scope){
        for(Integer i = 0; i < scope.size(); i++){ // twilio message is dependant on ORDER BY CreatedDate and LIMIT 1
            Mining_Log__c log = scope.get(i);
            if(log.CreatedDate < Datetime.now().addMinutes(5)){
                // we're good
            } else {
                // send text message
            }
        }
    }

    public void finish(Database.BatchableContext BC) {
        // nada
    }

}