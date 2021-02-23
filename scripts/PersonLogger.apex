Person p = new Person('Bob', 29);
// p.logMe();

// List<Log__c> logs = [SELECT Id, Log_Message__c, Stack_Trace__c FROM Log__c];
// for (Log__c l : logs) {
//     System.debug(l);
// }


try {
    throw new CustomisedException('what were you thinking?');
} catch (Exception ex) {
    Logger.logWithState(ex.getStackTraceString(), ex.getMessage(), 'Log', p);
}
