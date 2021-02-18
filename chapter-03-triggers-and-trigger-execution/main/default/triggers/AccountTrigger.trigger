trigger AccountTrigger on Account (before insert, after insert) {
	AccountTriggerHandler handler = new AccountTriggerHandler();
    handler.execute();
}