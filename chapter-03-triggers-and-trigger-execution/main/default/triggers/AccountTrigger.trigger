trigger AccountTrigger on Account (before insert, after insert) {
	TriggerHandler.run(AccountTriggerHandler.class);
}