public class AccountTriggerHandler extends TriggerHandler {

	private Map<Id, Account> oldMap() {
		return  (Map<Id, Account>)Trigger.oldMap;
	}

	private Map<Id, Account> newMap() {
		return  (Map<Id, Account>)Trigger.newMap;
	}

	private List<Account> oldList() {
		return  (List<Account>)Trigger.oldMap.values();
	}

	private List<Account> newList() {
		return  (List<Account>)Trigger.newMap.values();
	}

	public override void handleBeforeInsert() {
		// implementation...
		
		System.debug('got here into before insert');
	}
	public override void handleAfterInsert() {
		// implementation...
		System.debug('got here into after insert');
		System.debug(oldMap());
	}
	public override void handleBeforeUpdate() {
		// implementation...
	}
	public override void handleAfterUpdate() {
		// implementation...
	}
	public override void handleBeforeDelete() {
		// implementation...
	}
	public override void handleAfterDelete() {
		// implementation...
	}
	public override void handleAfterUndelete() {
		// implementation...
	}
}