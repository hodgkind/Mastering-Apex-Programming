trigger AccountTrigger on Account (after insert) {
	AccountTriggerHandler handler = new AccountTriggerHandler();
    handler.execute();
}